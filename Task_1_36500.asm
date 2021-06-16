.data       
string_0: .asciiz "\nX = "  
string_1: .asciiz "\n"
X: .word 50
I: .word 10

.text
main:
lw $t0, X

lw $t1, I


Loop:
li $v0, 4
la $a0, string_0
lw $t0, X
syscall
li $v0, 1
li $a0, 0
add $a0, $a0, $t0
syscall
li $v0, 4
#la $a0, string_1
#syscall
add $t0, $t0, 1
sw $t0, X
sub $t1, $t1, 1
BNE $t1, 0, Loop
