/* -- add02.s */
/* -- Declare "variables" */
/* -- not declaring variables like a high-level programming language, but 
      instead, simply declaring how many bytes of memory we need.  Since
      we are working with integers we need 32 bits (4 - bytes).  We limit to
      32-bits so the entire number can fit into a single 32-bit register */

.data
/* Ensure variable is 4-byte aligned. This is the size of our "word size" */
.balign 4
/* Define memory storage requirement for myvar1 */
myvar1:
    /* Contents of myvar1 is 4 bytes containing the value 3 */
    .word 3   /* Number 3 will be stored as 4 bytes

/* Same as above for the other value we want to store in memory */
.balign 4
myvar2:
    .word 4   /* Number 4 will be stored as 4 bytes */

/* At this point the assembler knows that we are going to need 32-bit/4-bytes of memory
   to hold our two numbers */
/* -- Here is the code */
.text

/* Once again, we must ensure code itself is 4 byte aligned so it used the full
   32-bit register */
.balign 4
.global main
main:
    ldr r1, addr_of_myvar1  /* r1 loads the address of this memory location */
    ldr r1, [r1]            /* r1 then the value located at that location */
    ldr r2, addr_of_myvar2
    ldr r2, [r2]
    add r0, r1, r2          /* now that both numbers are loaded into the register, add them and put in r0*/
    bx lr                   /* branch control back to OS code

/* Use labels to identify to the assembly that the data needs to be stored in two
   4-byte memory locations.  This will be determined at run-time. */
addr_of_myvar1: .word myvar1
addr_of_myvar2: .word myvar2
