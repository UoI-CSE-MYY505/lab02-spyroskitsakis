
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
    beq a1,zero,ret0
    slli s0 ,a1,2
    add s0,s0,a0
loop:
    addi so,so,-4
    lw t1,0(s0)
    beq t1,a2,done 
    bne s0,a1,loop
ret0:
    add s0,zero,zero
    
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
