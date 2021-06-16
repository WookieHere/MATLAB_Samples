.data
big_array: .space 4000
big_length:  .word 4000
#this is an array that is going to be filled later
array: .byte	20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0
length: .byte   21
delim: .asciiz  ","
delim2: .asciiz  "\n"
#the above is the worst-case array for a bubble sort ( O(n^2))



.text 
main:
#fill big array
lw $t0, big_length
#li $t1, 4000
li $t1, 0
fill_loop:
beqz $t0, end_fill
sw $t0, big_array($t1)
sub $t0, $t0, 4
add $t1, $t1, 4
b fill_loop
end_fill:


#setup of sort
li $t0, 0	#incrementer
li $t1, 0	#is_sorted flag (low-active)
li $t2, 1
#start of sort
sort:
lb $t0, length
li $t1, 0
#sub $t0, $t0		#set t0 to length-1
beqz $t2, end_sort	#end sort if all is sorted
li $t2, 0		#make sure t2 is 0
#start of loop
loop:
beq $t1, $t0, end_loop	#end loop if at end of array
lb $t3, array($t1)	#t3 is array[t1]
add $t1, $t1, 1		#add 1 to offset
lb $t4, array($t1)	#t4 is array[t1+1]
sub $t1, $t1, 1		#return offset to original
ble $t3, $t4, no_swap
#swap values
sb $t4, array($t1)
add $t1, $t1, 1		#add 1 to offset
sb $t3, array($t1)
sub $t1, $t1, 1		#return offset to original
li $t2, 1
no_swap:

add $t1, $t1, 1
b loop
end_loop:
b sort
end_sort:

#setup of big sort
li $t0, 0	#incrementer
li $t1, 0	#is_sorted flag (low-active)
li $t2, 1
#start of sort
big_sort:
lw $t0, big_length
li $t1, 0
#sub $t0, $t0		#set t0 to length-1
beqz $t2, big_end_sort	#end sort if all is sorted
li $t2, 0		#make sure t2 is 0
#start of loop
big_loop:
beq $t1, $t0, big_end_loop	#end loop if at end of array
lw $t3, big_array($t1)	#t3 is array[t1]
add $t1, $t1, 4		#add 1 to offset
lw $t4, big_array($t1)	#t4 is array[t1+1]
sub $t1, $t1, 4		#return offset to original
ble $t3, $t4, big_no_swap
#swap values
sw $t4, big_array($t1)
add $t1, $t1, 4		#add 1 to offset
sw $t3, big_array($t1)
sub $t1, $t1, 4		#return offset to original
li $t2, 1
big_no_swap:

add $t1, $t1, 4
b big_loop
big_end_loop:
b big_sort
big_end_sort:

print_loop:
lb $t0, length
#sub $t0, $t0
li $t1, 0	#t1 to 0
print:
beq $t0, $t1, end_print_loop
lb $t2, array($t1)
#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t2
syscall
#delimeter
li $v0, 4
la $a0, delim
syscall
add $t1, $t1, 1
b print
end_print_loop:

#delimeter
li $v0, 4
la $a0, delim2
syscall

print_big_loop:
lw $t0, big_length
#sub $t0, $t0
li $t1, 0	#t1 to 0
print_big:
beq $t0, $t1, end_print_big_loop
lw $t2, big_array($t1)
#print number
li $v0, 1
li $a0, 0
add $a0, $a0, $t2
syscall
#delimeter
li $v0, 4
la $a0, delim
syscall
add $t1, $t1, 4
b print_big
end_print_big_loop:
