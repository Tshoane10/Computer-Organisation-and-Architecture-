#=========================================================================
# @author: Ts'oanelo Rameno
# @date: 10 October 2022
# @Contacts: tsoanelorameno@gmail.com
# @Purpose: To develop a program that determines and prints the first
# 10 reversible prime squares. A reversible prime square:
#		a) Is not a palindrome
#		b) Is a square of prime, and its reverse is also a square of
#		   of a prime e.g 169 and 961 are not palindromes, so both are 
# 			reversible prime squares.
#==========================================================================		
# void PrintPrime(long int n){
# 	 
#	  
#			
#
#	}
#
# main() {
#	  PrintPrime(1200); 
#	  return 0;
#			}
#
#
#
#===========================================================================
.data
msg1: .asciiz " " # space
.text
.globl main

main:
addi $a1,$zero,50
jal list_prime


li $v0,10
syscall   #Exit(terminate execution)
####################################end of main

list_prime:
# $a1 = 10;
# $t0 = int i;
# $t1 = int j;
# $t2 = count;
# $t3 = square;

li $t0,1     #int i = 1;
#li $t1,2     #int j = 2;
li $t2,0     #int count = 0;
li $t3,0     #int square = 0;
	     #$t4 holds the remainder of i%j

outterloop:
bge $t0,$a1,exit1 #branch if i<=num


	li $t1,2     #int j = 2;
	innerloop:
	bgt  $t1,$t0,exit2
	#bgt $t0,$t1,exit2
	#FIRST IF statemnt
	
	  div $t1,$t0  
	  mfhi $t4  #save remaider of division in $t4
	  beqz $t4 ,L1 # L1 is the first if statement blocl
	  L1:
	  addi $t2,$t2,1  #increment cout
	  
	  
	  	
	  addi $t1,$t1,1
	  j innerloop
	  break
	  #li $v0,10 #break;
	  #syscall
	#exit2: 
	
	
	#SECOND IF statement
	exit2:
	beqz $t2,L2
	bne $t0,1,L2
	L2:
	li $v0,1
	add $a0,$zero,$t0
	syscall
	
	la $v0,4
	la $a0,msg1
	syscall
	
	#li $t2,0 #reset count to zero

	





addi $t0,$t0,1 #increment int i(i++)

li $t2,0 #reset count to zero
j outterloop
exit1:
li $v0,10
syscall

jr $ra

