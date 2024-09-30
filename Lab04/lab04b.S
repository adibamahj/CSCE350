	.globl factorial

factorial:
	SUB SP, SP, 16 //make room on stack
	STUR LR, [SP, 8] //save return address
	STUR X0, [SP, 0] //save original argument n
	
	CBNZ X0, else	//if n!=0, go to else branch
	MOV X0, #1 //set X0 to 1
	ADD SP, SP, 16 //pop return address and n
	BR X30 //return
else:
	SUB X0, X0, #1 // // n = n-1
	BL factorial //recursive call factorial(n-1)
	
	LDUR X1, [SP, #0] //restore original value of n
	BL my_mul //m= my_mul(m,n)
	
	LDUR LR, [SP, 0x8]       // Restore the return address
	ADD SP, SP, 0x10         // Restore stack pointer
	BR LR                     // Return to caller

		
	
