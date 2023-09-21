Todos os exemplos executam no [simulador Venus](https://www.kvakil.me/venus/)


# Suposições
* Vamos usar os vetores na área GP
* Usar -1 para terminar o vetor
* Alocar um vetor depois do outro....
* muitas vezes iremos fazer um código de inicialização
  
## exemplos

### Achar um elemento em um vetor, escrever em t0 o valor ou -1 senao achar.
```
.data
    # Declaração dos valores
    .word 5
    .word 7
    .word -3
    .word 9
    .word -1
.text
addi t3,x0,-1
addi t0,x0,-3
addi t1,gp,0
lw t2,0(t1)
loop: beq t2,t3,NAO_ACHOU
      beq t2,t0,END
      addi t1,t1,4
      lw t2,0(t1)
      beq x0,x0,loop
NAO_ACHOU: addi t0,x0,-1
END:

```

### Fazer o produto escalar de dois vetores

```
.data
    # Declaração dos valores
    .word 1
    .word 2
    .word 3
    .word -1
    .word 3
    .word 2
    .word 1
    .word -1
.text
# t3 Ponteiro vetor A
# t3+ 16  Ponteio vetor B
addi t3,gp,0 # ponteiro
addi t2,x0,-1
addi s0,x0,0
lw t0,0(t3)  # Ao
lw t1,16(t3)  # Bo
loop: beq  t0,t2,END
      mul t0,t0,t1
      add s0,s0,t0
      addi t3,t3,4
      lw t0,0(t3)  # Ai
      lw t1,16(t3)  # Bi
      beq x0,x0,loop
END:
```

### Fazer o somatorio de um vetor

### Retirar elementos repetidos de um vetor

### contar as ocorrências em um vetor


