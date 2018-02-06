#swap two numbers
.text 						#text section

.globl main 				#call main
main: la $t0, value 		#load address from 'value'
	  lw $t1, 0($t0)		#load first word into t1
	  lw $t2, 4($t0)		#load second word into t2
	  add $t3, $0, $t1		#temp store t1 into t3
	  add $t1, $0, $t2		#store t2 into t1
	  add $t2, $0, $t3		#store t3 into t2
	  add $t3, $0, $0		#clear t3
	  jr $ra				#exit
	  
.data						#data section
value: .word 111, 222	 	#data to be swapped
