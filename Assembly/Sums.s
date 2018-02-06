.globl main
main: 	
	la $t0, num
	lw $t1, 0($t0)		#load 18
	and $t2, $0, $0		#incrementer
	and $t3, $0, $0		#total sum reg
	
sum: 
	add $t3, $t3, $t2	#add the increment and total to total
	beq $t2, $t1, end	#if equals 18 break
	addi $t2, $t2, 1	#add one to counter
	j sum

end:
	sw $t3, 4($t0)		#store final sum
	jr $ra				#end 

.data
num: .word 18
