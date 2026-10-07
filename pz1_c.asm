.eqv SIZE 34            

.data
arr:    .space 136      

.text
main:
    la   s0, arr        
    li   s1, 0          
    li   s2, SIZE       

read_loop:
    beq  s1, s2, read_done 
    li   a7, 5          
    ecall               
    beqz a0, read_done  
    sw   a0, 0(s0)      
    addi s0, s0, 4      
    addi s1, s1, 1      
    j    read_loop

read_done:
    la   s3, arr        
    li   s4, 0          
print_loop:
    beq  s4, s1, finish 
    lw   a0, 0(s3)
    li   a7, 1          
    ecall
    li   a0, 32         
    li   a7, 11         
    ecall
    addi s3, s3, 4
    addi s4, s4, 1
    j    print_loop

finish:
    li   a7, 10         
    ecall
