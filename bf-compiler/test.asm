addi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
beq $s0, $0, LOOP_END1
LOOP_START1:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
addi $sp, $sp, 1
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
bne $s0, $0, LOOP_START1
LOOP_END1:subi $sp, $sp, 1
lbu $a0, 0($sp)
li $v0, 11
syscall
addi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
beq $s0, $0, LOOP_END2
LOOP_START2:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
addi $sp, $sp, 1
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
bne $s0, $0, LOOP_START2
LOOP_END2:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
lbu $a0, 0($sp)
li $v0, 11
syscall
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
addi $sp, $sp, 1
addi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
beq $s0, $0, LOOP_END3
LOOP_START3:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
addi $sp, $sp, 1
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
bne $s0, $0, LOOP_START3
LOOP_END3:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
addi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
beq $s0, $0, LOOP_END4
LOOP_START4:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
addi $sp, $sp, 1
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
bne $s0, $0, LOOP_START4
LOOP_END4:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
subi $sp, $sp, 1
lbu $a0, 0($sp)
li $v0, 11
syscall
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
addi $sp, $sp, 1
addi $sp, $sp, 1
addi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
beq $s0, $0, LOOP_END5
LOOP_START5:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
addi $sp, $sp, 1
lbu $s0, 0($sp)
subi $s0, $s0 1
sb $s0, 0($sp)
lbu $s0, 0($sp)
bne $s0, $0, LOOP_START5
LOOP_END5:subi $sp, $sp, 1
lbu $s0, 0($sp)
addi $s0, $s0, 1
sb $s0, 0($sp)
lbu $a0, 0($sp)
li $v0, 11
syscall
li $v0, 10
syscall
