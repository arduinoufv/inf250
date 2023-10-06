Executar passo a passo o exemplo e em cada linha colocar o valor do registrador. Atenção que pode pular instruções.

# Exemplo 1 - Executar 20 ciclos
```
Addi t1,x0,11 # 
Addi t2,x0,5 # 
Addi s0,x0,10 #  
Addi s1,x0,12 # 
Maior0: Blt t2,t1, Maior1 #
Addi t5,t1,0     #
Addi t1,t2,0     #
Addi t2,t5,0	  #
Addi t5,x0,0 	  #
j Maior0          #
Maior1: Blt s0,t2, Maior2
Addi t5,t2,0    
Addi t2,s0,0     
Addi s0,t5,0	  
Addi t5,x0,0
j Maior0
Maior2: Blt s1,s0, Maior3
Addi t5,s0,0    
Addi s0,s1,0     
Addi s1,t5,0	  
Addi t5,x0,0
j Maior0
Maior3: j FIM
FIM:...
```

-------

# Exemplo 2 Executar 25 ciclos. Alem dos registradores, mostrar os valores da memoria.
```
addi t0,x0,3 #
addi t1,x0,7 #
sw t0,0(gp)#
sw t1,4(gp)#
add t2,x0,x0#
add t3,x0,x0#
Loop:	add t2,t2,t1 #
	addi t3,t3,1 # 
           beq t3,t0,Exit#
           bne t3,t0,Loop# 
Exit:

sw t2,8(gp) #

```

---------

# Exemplo 3 executar 25 ciclos
```
addi t0, t0, 32 # 
addi t1, t1, 48 # 
srli t3, t0, 4 # 
srli t4, t1, 4 # 
andi t5, t0, 15 #
andi t6, t1, 15 # 
addi t5, t5, 16 
addi t6, t6, 16
beq t3, t4, SOMA # 
blt t4, t3, AJUSTEt4 # 
blt t3, t4, AJUSTEt3 # 
AJUSTEt4:
addi t4, t4, 1
srli t6, t6, 1
bne t3, t4, AJUSTEt4
beq t3, t4, SOMA
AJUSTEt3:
addi t3, t3, 1
srli t5, t5, 1
bne t3, t4, AJUSTEt3
beq t3, t4, SOMA
SOMA:
andi t0, t0, 0 #
add t0, t0, t3 # 
andi t1, t1, 0 # 
add t1, t5, t6
add t2, t2, t1 # 
andi t2, t2, 32
srli t2, t2, 5

```
