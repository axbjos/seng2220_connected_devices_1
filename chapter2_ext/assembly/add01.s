/* -- sum01.s */
.global main
.func main

main:
mov r1, #3
mov r2, #-4
add r0,r1,r2   /* add the value in r1 to the value in r2 and put result in r0 */
bx lr          /* branch back to OS code */