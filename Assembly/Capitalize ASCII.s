#Jomar Pueyo UXT302
#Capitalize

.globl main
main: 	
	li $v0, 8				#read input for syscall
	la $a0, myString		#load string
	syscall
	
	li $v0, 4				#print the string
	li $t0, 0				#load 0 to $t0
	
loop:
	lb $t1, myString($t0)	#load byte to t1
	beq $t1, 0, end			#if no byte present end
	sub $t1, $t1, 32		#subtract 32 from byte to make lower Uppercase
	sb $t1, myString($t0)	#store byte back
	addi $t0, $t0, 1		#add 1 to go to next byte
	j loop					#loop
	
end:
	li $v0, 4				#print the string of 
	la $a0, myString		#myString
	syscall
	
	jr $ra					#end program

.data
myString: .asciiz ""
