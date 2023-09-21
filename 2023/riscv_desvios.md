Todos os exemplos executam no [simulador Venus](https://www.kvakil.me/venus/)


# Desvios Condicionais

Temos várias instruções, as mais frequentes de serem implementadas são:
* **beq rs1,rs2, Dest** que irá desviar para o **Dest** como um **goto** se **r1==r2**
* Outras variações são
  
      * bne (não igual),
      * blt (menor),
      * bge (maior igual)
      * bltu (menor sem sinal),
      * bgeu (maior igual sem sinal)

## Exemplos

### comando IF
```
if t1 > t2
   t0 = t2 + 1
else
   t0 = t2 - 1
```
em assembly
```
blt t2,t1,THEN #  t2 < t1
addi t0,t2,-1
beq x0,x0,END:
THEN:addi t0,t2,1
END:
```

### Manipulação sem sinal
```
addi t1,x0,-1
addi t0,x0,1
bltu t0,t1,END:
add t0,t0,t0
END:
```
* Qual será o valor de t0 ?

# Laços ou loops

## Exemplos

### Preencher da posição gp, 10 posições de memória considerando palavras de 4 bytes com one-hot code 1, 10, 100, 1000, ....

```
addi t0,x0, 10
addi t1,gp,0
addi t2,x0,1
LOOP: beq t0,x0,END:
sw t2,0(t1)
addi t1,t1,4
slli t2,t2,1
addi t0,t0,-1
beq x0,x0,LOOP
```





