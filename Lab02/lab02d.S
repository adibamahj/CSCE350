.section .text

.globl lab02d 

lab02d:  ADD X1, X0, 0x3E8 //X1 is now X0 + 1000
	 ADRP X2, myvalue // X2 now has the address of myvalue 52 bits
         ADD X2,X2, :lo12:myvalue //myvalue + 12 bits
	  
         
	 
nomodify:
         BR X30

.section       .data
myvalue:  .word 0x12345678
