# Assembly Language Risc-V

## Livro

[ Guia Prático RISC-V](http://riscvbook.com/portuguese/)
## Simuladores

1. [Simulador Venus Risc-V](https://www.kvakil.me/venus/)  **Usar o simulador Venus, preferencialmente**


![](https://miro.medium.com/max/800/1*K9_qchqCTGRdM_OiaF-Oew.png)
![](https://miro.medium.com/max/1400/1*f50RuF9IRqgzCatWIpXCuw.png)
![](https://miro.medium.com/max/1400/1*GVqoi2jj6GjounRAhm4xxg.png)
![](https://miro.medium.com/max/720/1*EAp2eigMdoY-44wOIScz6w.png)

## Outros Simuladores

2. [Simulador Online WebRisc-V](https://webriscv.dii.unisi.it/)
3. [RISC-V Interpreter - Universidade Cornell](https://www.cs.cornell.edu/courses/cs3410/2019sp/riscv/interpreter/)

## Trabalho de 2022 - entregar até 3 novembro de 2022.

[Play list com vários exemplos de programas em Assembler](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lwU_HqhBgzdTP_diV8DKv9)

[Explicação e dicas para o trabalho](https://www.youtube.com/playlist?list=PLcvOyD_LMr6n1WFLA0e0a-pF9texQuEbk)

### Parte de Assembly  (8 pontos)
* Criar um link no drive ou github com os códigos para que seja fácil copiar e colar no VENUS para testar a execução.
* [enviar o link por este formulário](https://forms.gle/pswJSKDuPbBVKZWNA)

 #### 1. Fazer a multiplicação de float 7 bits
 * Entrada: 2 números em binário com float nos registradores t0 e t1. Exemplo t0= ...011 1000, t1=...100 0110
 * Saida: Resultado da Multiplicação no registrador t2.
 * Adicione comentarios no seu código e se possível um pseudo código com o algoritmo
 ```
 addi t0,x0,0x38
 addi t1,x0,0x46
 # Adicionar seu código
 # resultado estará em t2
 ```
 
 #### 2. Fazer um printf 2^e * 1.x onde e=-3 a +4 e x é parte fracionária
 * imprimir a resposta usando caracteres ASCII
 * Entrada valor em t0
 * Saida será em ASCII na memoria a partir da posicao GP, primeiro o expoente, depois o numero. Por exemplo 011 1000 = 2^3-3*(1+1/2) = 2^0 * 1.5.
 ```
0x1000000c				
0x10000008	5
0x10000004	1 .
0x10000000	2 ^ 0  
 ```
 #### 3. Algoritmo KNN com duas dimensões
 
 ![](https://miro.medium.com/max/1024/1*CcnlWd_JbbAiO5J0WYdaqw.png)
 
 * Entrada : O vetor terá duas dimensões e será armazenado a partir da posição GP. Primeiro tem o valor de K, depois seu ponto X,Y, seguido pelo vetor que terminar com -1.
 * Saida: Irá ser escrita em GP, sobreescrevendo o valor de k. Pode ter três classes: 0, 1, 2;
 ```
 Memoria = 3, 2,1,  0, 0, 1  , 0, 1, 2 ,   1,0, 1 ,  2,0,1,  3,0,1,   0,2, 2,  0,3, 2  -1
 então K=3, queremos classificar o ponto (2,1) 
 a resposta será classe 1. 
 ```
 [link para o exemplo](https://excalidraw.com/#json=jCg-UmaMlxfYCTQMU6qVm,BhUYn8dzWb3wTNhh0yVZvA)

 Exemplos de 2021
 
 1. [Exemplos de Exercícios com Risc-V - Acesso Conta UFV](https://docs.google.com/presentation/d/1tb34UEvhoxoEdC1_fbXu3UY-vA_RvBoIy57_NG5N2Qc/edit?usp=sharing)
 2. [Exemplos de Exercícios com Risc-V e Vetores - Acesso Conta UFV](https://docs.google.com/presentation/d/1WRfD1qvOyuBejxO2VBSerXI2el9rSEjl9r4OwykaSUA/edit?usp=sharing)
3. [Primeiros programas: Maior de 3, multiplicação e soma Float](https://docs.google.com/document/d/1rUmymGDLARdh5TfFf2sVm_lYDWwta8lBEPJUryNs3Xk/edit?usp=sharing)
 4. [Vetores, Produtos Escalar, Comparação e Multiplicação de Matrizes](https://docs.google.com/document/d/1GoO48cAaE69oHqD4giunHLUfNZGUo15V4C1n5g7Yc7k/edit?usp=sharing)

# Codificação 

## Video de 2022

[Playlist de Codificação](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lBkuAXtF-8DH8WHVpnT7Fw)

## Material com slides

1. [Slides do Capítulo 2 do Livro Patterson&Hennessy - Acesso Conta UFV](https://docs.google.com/presentation/d/1BqaqjFikDXnsPEoxdnN7-IbQU2Ji0nUNVJfQDp9I8Dk/edit?usp=sharing)
2. [RISC-V Instruction Formats Instructor: Steven Ho](https://inst.eecs.berkeley.edu/~cs61c/resources/su18_lec/Lecture7.pdf)
3. [Slides de Risc-V e codificação: Department	of	Computer	Science	and	Engineering
Yonghong Yan](https://passlab.github.io/CSCE513/notes/lecture04_RISCV_ISA.pdf)


## Codificação das Instruções

[Playlist da Codificação de 2021](https://www.youtube.com/playlist?list=PLcvOyD_LMr6mTtcPhwp5KFARQOusn66EO)

[Pasta com exemplos (desenhos) de 2021](https://github.com/arduinoufv/inf250/tree/master/Assembler_Risc_V/download/formato)



## Material em Texto

1. [Manual Especificação](https://riscv.org//wp-content/uploads/2017/05/riscv-spec-v2.2.pdf)


# Implementações em Verilog
1. [Risc-V Monociclo](https://github.com/cacauvicosa/mips/tree/master/michael/riscv)
2. [Disassembler](https://github.com/BrunoLevy/learn-fpga/blob/master/FemtoRV/TUTORIALS/FROM_BLINKER_TO_RISCV/riscv_disassembly.v)

