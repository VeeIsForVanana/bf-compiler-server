use std::{fs::File, io::Read, net::TcpListener};

mod Request {

    // track the request method
    pub enum Method {
        POST,
        GET,
    }

    // track if the accept is valid for this request
    pub enum Accept {
        TextHtml,
        TextFile,
    }

    pub enum ContentType {
        Brainfuck,
        Invalid,
    }

    pub enum UserAgent {
        Browser,
        Terminal,
    }

    pub struct Request {
        method: Method,
        accept: Accept,
        body: String,
    }
}

fn main() {
    if let Err(_) = File::open("exercise_2") {
        panic!(
            "Compiler executable 'exercise_2' not found in path {}!",
            env!("PWD")
        )
    }
    let listener = TcpListener::bind("localhost:0").unwrap();
    println!("Connect to {}", listener.local_addr().unwrap());

    for stream in listener.incoming() {
        if let Ok(mut stream) = stream {
            println!("Established connection to {}", stream.peer_addr().unwrap());
            let mut req_buf: Vec<u8> = vec![];
            stream.read_to_end(&mut req_buf).unwrap();
            let req_str: String = String::from_utf8(req_buf).expect("Expected valid UTF8");
            let request = parse_request(req_str);
            println!("{:?}", request);
        }
    }
}

fn parse_request(req_str: String) -> Result<(), String> {
    let mut lines = req_str.split('\n');
    let mut first_line = lines.next().unwrap().split(" ");

    // assert that the first line of the HTTP request is the expected triple
    assert!(first_line.clone().count() == 3);
}
