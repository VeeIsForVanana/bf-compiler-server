use bf_compiler::*;
use regex::Regex;
use std::{
    env,
    fs::File,
    io::{BufReader, BufWriter},
};

// find the brainfuck file and emit its contents
fn read(file_path: &String) -> File {
    return File::open(file_path).unwrap();
}

fn create_file(file_path: &String) -> File {
    let extension_matcher = Regex::new(r"\.bf$").unwrap();
    let new_filename = extension_matcher.replace(file_path, ".asm");
    File::create(new_filename.into_owned()).unwrap()
}

fn main() {
    let arguments: Vec<String> = env::args().collect();
    match arguments.len() {
        2 => {
            let file_path = &arguments[1];
            let src = read(file_path);
            let dest = create_file(file_path);
            compile(BufReader::new(src), BufWriter::new(dest)).unwrap();
        }
        _ => panic!("Not enough arguments!"),
    }
}

pub mod bf_compiler {
    use std::{
        io::{BufReader, BufWriter, Read, Write},
        str::Chars,
    };

    // perform all compilation steps given a buffer containing the bf code and a destination buffer
    pub fn compile<A, B>(mut src: BufReader<A>, dst: BufWriter<B>) -> Result<(), String>
    where
        A: Read,
        B: Write,
    {
        let mut src_string = String::new();
        if let Err(_) = BufReader::read_to_string(&mut src, &mut src_string) {
            return Err(String::from(
                "An I/O error kept the .bf file from being read",
            ));
        }
        if !is_valid(&src_string) {
            return Err(String::from("Brainfuck code is invalid"));
        }

        parse(dst, &src_string);

        return Ok(());
    }

    // check if the code string is valid brainfuck
    fn is_valid(code: &String) -> bool {
        let mut counter = 0;
        for cmd in code.chars() {
            match cmd {
                '[' => counter += 1,
                ']' => {
                    if counter <= 0 {
                        return false;
                    } else {
                        counter -= 1
                    }
                }
                _ => continue,
            }
        }
        if counter == 0 {
            true
        } else {
            false
        }
    }

    // go through the brainfuck file and emit the appropriate MIPS assembly to a text file
    fn parse(mut dest_buff: BufWriter<impl Write>, src_code: &String) {
        let mut src_iter = src_code.chars();
        translate_loop(&mut dest_buff, &mut src_iter, LoopLocator::new());
    }

    // provide the appropriate translations for a given command (except loops)
    pub fn translate(cmd: char) -> String {
        String::from(match cmd {
            '>' => "addi $sp, $sp, 1\n",
            '<' => "subi $sp, $sp, 1\n",
            '+' => "lbu $s0, 0($sp)\naddi $s0, $s0, 1\nsb $s0, 0($sp)\n",
            '-' => "lbu $s0, 0($sp)\nsubi $s0, $s0 1\nsb $s0, 0($sp)\n",
            '.' => "lbu $a0, 0($sp)\nli $v0, 11\nsyscall\n",
            ',' => "li $v0, 5\nsyscall\nsb $v0, 0($sp)\n",
            _ => "",
        })
    }

    // provide the appropriate translations for a loop,
    // use a provided counter to determine labels for this loop and all others inside,
    // return the incremented counter to be used by the next loops
    fn translate_loop(
        mut dest_buff: &mut BufWriter<impl Write>,
        src_iter: &mut Chars,
        mut locator: LoopLocator,
    ) -> LoopLocator {
        if locator.depth > 0 {
            dest_buff
                .write(
                    format!(
                        "lbu $s0, 0($sp)\nbeq $s0, $0, LOOP_END{}\nLOOP_START{}:",
                        locator.count, locator.count
                    )
                    .as_bytes(),
                )
                .unwrap();
        }
        while let Some(char) = src_iter.next() {
            match char {
                '[' => {
                    locator = translate_loop(
                        &mut dest_buff,
                        src_iter,
                        LoopLocator {
                            depth: locator.depth + 1,
                            count: locator.count + 1,
                        },
                    )
                }
                ']' => break,
                _ => {
                    dest_buff.write(translate(char).as_bytes()).unwrap();
                }
            }
        }
        if locator.depth > 0 {
            dest_buff
                .write(
                    format!(
                        "lbu $s0, 0($sp)\nbne $s0, $0, LOOP_START{}\nLOOP_END{}:",
                        locator.count, locator.count
                    )
                    .as_bytes(),
                )
                .unwrap();
            return LoopLocator {
                depth: locator.depth - 1,
                count: locator.count,
            };
        }
        dest_buff.write("li $v0, 10\nsyscall\n".as_bytes()).unwrap();
        LoopLocator {
            depth: locator.depth,
            count: locator.count + 1,
        }
    }

    struct LoopLocator {
        depth: u32,
        count: u32,
    }

    impl LoopLocator {
        fn new() -> LoopLocator {
            LoopLocator { depth: 0, count: 0 }
        }
    }
}
