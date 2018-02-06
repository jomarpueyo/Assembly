#Jomar Pueyo UXT302
#Find n factorial

.globl main
main: 	
	la $t0, num
	lw $t1, 0($t0)		#load n
	li $t2, 1			#incrementer
	li $t3, 1			#total register
	
fac: 
	mult $t3, $t2		#mult the increment and total register to total
	mflo $t3			#update total register with special $LO register
	beq $t2, $t1, end	#if incrementer equals n break
	addi $t2, $t2, 1	#add one to counter
	j fac

end:
	sw $t3, 4($t0)		#store final total
	jr $ra				#end 

.data
num: .word 4			#n is 4
