.globl main
main: 	
	la $t0, num
	lw $t1, 0($t0)		#load 128
	
counter: 
	andi $t3, $t1, 1	#Check first bit if 1
	beq $t3, 1,	end		#if 1 is present end
	addi $t2, $t2, 1	#add one to counter
	sra	$t1, $t1, 1		#shift right one
	j	counter			#loop back
	
end:
	sw $t2, 4($t0)		#store amount
	jr $ra				#end

.data
num: .word 128
