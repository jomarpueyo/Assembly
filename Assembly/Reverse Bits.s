#reverse the bits
.text 					#text section

.globl main 			#call main
main: 
	la $t0, value 		#load address from 'value'
	li $t1, 0			#counter
	li $t2, 32 			#termination
	lw $t3, 0($t0)		#load word from address
	li $t4, 1 			#1
	li $t5, 0			#00000000 00000000 00000000 00000000
	add $t7, $0, $t3 	#copy of t3 
	
loop:
	beq $t1, $t2, end	#jump to end if equal
	and $t6, $t4, $t3   #bitwise and 1 with word
	sll $t5, $t5, 1		#shift final left once
	bne $0, $t6, one	#if 1 is found branch
	sra $t3, $t3, 1		#word shift right 1 	
	addi $t1, $t1, 1 	#add 1 to counter
	j loop				#jump to loop
	
one:					
	add $t5, $t5, 1		#add one to shifted value 
	sra $t3, $t3, 1		#shift right old value
	addi $t1, $t1, 1	#add 1 to counter
	j loop				#back to loop
	
end:
	sw $t5, 0($t0)		#store word
	jr $ra				#exit
	
.data					#data section
value: .word 49			#data to be reversed