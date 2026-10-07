.eqv N 18               

.text
main:
    li   a7, 5         
    ecall               
    li   t0, N         
    li   t1, 0         
    bne  a0, t0, print  
    li   t1, 1          
print:
    mv   a0, t1        
    li   a7, 1          
    ecall
    li   a7, 10         
    ecall
