Todos os exemplos executam no [simulador Venus](https://www.kvakil.me/venus/)

# Instruções básicas Aritméticas e Lógicas

* Aritméticas e lógicas com dois operandos: **add,sub,and,mul,**...
* Aritméticas e lógicas com 1 operando + constante: (imediato): **addi, andi, ...**
* Deslocamento Shift Lógico e Shift Aritmético com ou sem imediato: **srl,sra,sll,sla,srli,...** 

  ## Exemplo 1
  ### Inicializa e soma dois valores nos registradores
 ```
  addi t0,x0,3  # Registrador t0 = x0 + 3 = 3, x0 tem sempre 0
  addi t1,x0,10 # t1 = x0+10=10
  add t2,t0,t1  # t2 = 3 + 10 = 13 
 ```

  ## Exemplo 2 
  ### Inicializa um float 7bits e separa expoente e mantissa
 ```
  addi t0,x0,0x38  # Registrador t0 = x0 + 0x38 = 0...011 1000
  andi t1,t0,0xf # t1 = t0 AND 0...0111 = Mantissa = 8 = 1000
  andi t2,t0,0x70 # t2 = expoente 0000 e2e1e0 0000, falta deslocar
  srli t2,t2,4 # t2 = t2 >> 4 = e2e1e0
 ```

# Instruções básicas para Memória

* No simulador Venus, usaremos a área de memória apontada pelo registrador **gp**
* Nas implementações em Verilog, usaremos a posição **0** como referência
* Iremos trabalhar com palavras de 32 bits ou 4 bytes, então iremos "andar" de 4 em 4 nos ponteiros
* iremos usar apenas 2 instruções **sw** (store word) para gravar e **lw** (load word) para ler da memória.

## Exemplo 3 
### soma 2 valores e grava na memória
```
  addi t0,x0,3  # Registrador t0 = x0 + 3 = 3, x0 tem sempre 0
  addi t1,x0,10 # t1 = x0+10=10
  add t2,t0,t1  # t2 = 3 + 10 = 13
  sw  t2,0(gp)  # Grava t2 no posição GP de memória
 ```
  ## Exemplo 4
  ### separa expoente e mantissa e grava em gp e gp+4
 ```
  addi t0,x0,0x38  # Registrador t0 = x0 + 0x38 = 0...011 1000
  andi t1,t0,0xf # t1 = t0 AND 0...0111 = Mantissa = 8 = 1000
  andi t2,t0,0x70 # t2 = expoente 0000 e2e1e0 0000, falta deslocar
  srli t2,t2,4 # t2 = t2 >> 4 = e2e1e0
  sw  t2,0(gp)  # Grava t2 no posição GP de memória
  sw  t1,4(gp)  # Grava t1 no posição GP+4 de memória
 ```
## Exemplo 5 
### soma 2 valores e grava na memória GP, depois lê da memoria GP e grava o dobro em GP+4
```
  addi t0,x0,3  # Registrador t0 = x0 + 3 = 3, x0 tem sempre 0
  addi t1,x0,10 # t1 = x0+10=10
  add t2,t0,t1  # t2 = 3 + 10 = 13
  sw  t2,0(gp)  # Grava t2 no posição GP de memória 
  lw  t0,0(gp)  # Le para t0 o valor da posição GP de memória
  add t0,t0,t0
  sw  t0,4(gp)
 ```

 ## Exemplo 6 - Qual a diferença entre um shift lógico e um shift aritmético ?

 ## Exemplo 7 - Como posso incrementar um ponteiro em um array ?

 ## Exemplo 8 - Como posso representar dois array A e B e fazer acesso a A[i] e B[j] ?
 

