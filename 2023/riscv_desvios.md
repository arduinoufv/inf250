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

```
if t1 > t2
   t3 = t2 + 1
else
   t3 = t2 - 1
```
em assembly
```
blt t2,t1,THEN #  t2 < t1
addi t3,t2,-1
beq x0,x0,END:
THEN:addi t3,t2,1
END:
```


