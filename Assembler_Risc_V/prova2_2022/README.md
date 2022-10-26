# Prova 2

[Playlist com exemplos de questões para Prova](https://www.youtube.com/playlist?list=PLcvOyD_LMr6mgvBkzs7Xv3Tin8j_5_adv)

## Questao 1 - Rastrear código Assembler  ( 8 pontos)

Dado um código assembly, valores para alguns registradores e memória, executar X ciclos do código e escrever qual serão os valores modificados dos registradores e memória. Pode também dizer quantos ciclos para completar a execução do código

## Questao 2 - Codificação  ( 8 pontos ) 
 * Parte I - Dada uma instrução LW x4,8(x2) codificar em hexadecimal.
 * Parte II - Dado um código 0xff3d... dizer qual é a instrução.
 
 
 ## Questão 3 - Datapath e Verilog  ( 6 pontos)
 * Parte I - dada uma instrução marcar as linhas que são importantes para sua execução e colocar **TODOS** os valores que são importantes.
 * Parte II - Marcar as linhas importantes no código VERILOG e colocar as valores que são importantes para execução da instrução
 * Parte III - Implementar uma nova instrução.
 
 # Exemplo para estudar para Prova 2
 
 ## Questão 1

1. Quais os valores dos registradores após 10 ciclos ? Quais serão os valores finais e quantos ciclos para executar o programa ?
 ```
addi t4,x0,0
addi t3,x0,8
addi t2,x0,3
loop: sub t3,t3,t2
slt t5,t3,x0 
bne t5,x0, fim 
addi t4,t4,1
jal loop 
fim: sw t4,0(gp)
 ```
 
 ## Questão 2
 
 1. Codificar em hexadecimal as instruções addi t4,x0,0 e slt t5,t3,x0
 2. Quais são as instruções para os códigos hexadecimal : 01d1a023,  407e0e33, 000e2f33 e 000f1663
 
 # Provas dos Anos anteriores 
   * algumas usavam MIPS, que é um pouco diferente do Risc-V, mas servem para ter questões para treinar
   * [prova de 2019](https://github.com/arduinoufv/inf250/blob/master/Assembler_Risc_V/prova2_2022/p19.pdf)
   * [prova de 2015](https://github.com/arduinoufv/inf250/blob/master/Assembler_Risc_V/prova2_2022/prova3_2015.pdf)
