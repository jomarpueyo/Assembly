#reverse the bits
.text 					#text section

.globl main 			#call main
main: 
	la $a0, name		#load name
	li $v0, 4			#load print_string
	syscall				#print_string
	la $a0, last		#load last name
	syscall				#print_string
	la $a0, first		#load first name
	syscall				#print_string
	la $a0, last		#load last name
	syscall				#print_string
	jr $ra				#exit
	
.data					#data section
name: .asciiz "My name is "
first: .asciiz "Jomar "
last: .asciiz "Pueyo "