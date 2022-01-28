/* --first.s */
/* This is an example comment */
.global main        /* defines an entry point */
.func main          /* the "main function" */

main:
    mov r0, #2      /* simply moving the number 2 into the r0 register */
    bx lr           /* this returns control back to the OS */
                    /* bx is an opcode for "branch and exchange"
                    /* in this case the cpu will branch to whatever address
                    is in the lr register */