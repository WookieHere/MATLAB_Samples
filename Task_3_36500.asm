.data
r: .byte 10
c: .byte 10
a: .space 100
transpose: .space 100
i: .byte 0
j: .byte 0
row_str: .asciiz "\nRow = "
col_str: .asciiz "\nCol = "
delim: .asciiz ": "

.text 
main:

li $t0, 0 #row
li $t1, 0 #col
lb $t6, r
lb $t7, c
li $t2, 0 #offset

Loop_fill:
Loop_r:
add $t0, $t0, 1
#print text
li $v0, 4
la $a0, row_str
syscall

#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t0
syscall
#delimeter
li $v0, 4
la $a0, delim
syscall

Loop_c:
#print text
li $v0, 4
la $a0, col_str
syscall

#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t1
syscall
#delimeter
li $v0, 4
la $a0, delim
syscall

add $t1, $t1, 1
mul $t2, $t0, 10 #generate offset
add $t2, $t2, $t1
lb $t3, a($t2) #load array address
la $t5, a($t2)
sb $t5, a($t2)
#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t2
syscall
#number at a[i][j] is printed
sb $t0, i
sb $t1, j
bne $t1, $t7, Loop_c
li $t1, 0 #reset col
bne $t0, $t6, Loop_r
#done filling

li $t0, 0 #row
li $t1, 0 #col
lb $t6, r
lb $t7, c
li $t2, 0 #offset


#transpose loop
Loop_r2:
add $t0, $t0, 1
#print text
li $v0, 4
la $a0, row_str
syscall

#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t0
syscall
#delimeter
li $v0, 4
la $a0, delim
syscall

Loop_c2:
#print text
li $v0, 4
la $a0, col_str
syscall

#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t1
syscall
#delimeter
li $v0, 4
la $a0, delim
syscall
add $t1, $t1, 1


mul $t2, $t0, 10 #generate offset
add $t2, $t2, $t1
lb $t3, a($t2) #load array word
mul $t2, $t1, 10 #generate offset (transpose)
add $t2, $t2, $t0
la $t5, transpose($t2)
sb $t5, transpose($t2)
#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t2
syscall
bne $t1, $t7, Loop_c2
li $t1, 0
bne $t0, $t6, Loop_r2
