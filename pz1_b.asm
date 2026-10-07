.eqv GROUP 126          
.eqv H 18                

.text
main:
    li   a7, 5         
    ecall               
    li   t1, GROUP      

   
    mv   s0, a0
    mv   s1, t1
    ble  a0, t1, ordered   
    mv   s0, t1             
    mv   s1, a0
ordered:
    li   s2, H          

loop:
    bgt  s0, s1, done   
    mv   a0, s0
    li   a7, 1          
    ecall
    li   a0, 32         
    li   a7, 11         
    ecall
    add  s0, s0, s2     
    j    loop

done:
    li   a0, 10       
    li   a7, 11
    ecall
    li   a7, 10         
    ecall
