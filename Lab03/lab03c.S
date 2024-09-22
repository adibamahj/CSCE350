.globl lab03c
        
lab03c:
        ADRP X10, j //load j into X10
        ADD X10, X10,:lo12:j //lower 12 bits loaded
        LDR W0, [X10,0] //add value or j
        ADRP X2, my_array// load array into X2
        ADD X2, X2, :lo12:my_array //lower 12 bits loaded

        MOV X1, #0 //initialize loop X1=0
loop:
        CMP X1, #10 //is X1>=10
        BGE exit //exit if that is the case
        STR W0, [X2, X1, LSL #2] //array[i] = j
        ADD W0, W0, #1 //incrememnts j
        ADD X1, X1, #1 //increments loop
        B loop //goes to top of loop

exit:
        BR X30 //exits
.section .data
        my_array: .space 40 //allocation of array
        j: .word  0x0007 //first number of UIN (7)
