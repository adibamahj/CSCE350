.globl lab03b
        

lab03b:
        ADRP X10, UIN //adds UIN to X10 upper 12 bits
        ADD X10, X10,:lo12:UIN //lower 12 bits
        LDUR X0, [X10,0] //loads value

        MOV X1, #0 //i for loop iterator
loop:
        CMP X1, #10 //compares if X1 is 10 or more
        BGE exit//if so then exit
        SUB X0, X0, #1 //subtracts from UIN
        STUR X0, [X10,0] //reload new value
        ADD X1, X1, #1 //iterate i
        B loop //loop again

exit:
        BR X30 //exit

.section .data
UIN:
        .word 0x00000018 //24 dec is the sum of UIN
