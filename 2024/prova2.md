
1. (a) Qual é a codificação em Hexadecimal para as instruções sub t1,t1,t2 e addi t0,t0,-4
(b) Quais são as instruções em Assembly para os códigos: 00300313 e 007393b3

2. 
(a) Marque todas as linhas de dados e de controle na figura do caminho de dados (DATAPATH)  e coloque os valores para a primeira execução da instrução bne t1,x0,LOOP  no caminho de dados do RISC-V
(b) Marcar as linhas importantes no código VERILOG e colocar as valores que são importantes para execução da instrução do item (a)
(c ) Implementar uma nova instrução MFL rd,rs1,rs2 com o opcode 7 que faça a montagem de um número de ponto flutuante onde rs1 é o expoente e rs2 é a mantissa. Exemplo rs1 = 0…0101 e rs2 = 0…001011, rd será 0..01011011. Quais as linhas que serão modificadas no código Verilog (reescreva apenas elas) ? Será necessário alterar o caminho de dados (datapath)  ? Se Sim, quais partes ?

3.(a) Marque todas as linhas de dados e de controle na figura do caminho de dados (DATAPATH)  e coloque os valores para a primeira execução da instrução add x7,x5,x6  no caminho de dados do RISC-V
(b) Marcar as linhas importantes no código VERILOG e colocar as valores que são importantes para execução da instrução do item (a)
(c ) Implementar uma nova instrução MFL rd,rs1,rs2 com o opcode 7 que faça a montagem de um número de ponto flutuante onde rs1 é o expoente e rs2 é a mantissa. Exemplo rs1 = 0…0101 e rs2 = 0…001011, rd será 0..01011011. Quais as linhas que serão modificadas no código Verilog (reescreva apenas elas) ? Será necessário alterar o caminho de dados (datapath)  ? Se Sim, quais partes ?

4. Suponha x5 = 9, x6  = 4, mostrar todas as linhas e valores no Datapath singlecycle do RiscV e anotar as linhas e valores no código Verilog (anotar Q1 nas linhas afetadas)  para a instrução BGE no trecho abaixo:
loop: addi x5,x5,1
          addi x6,x6,2
          bge x5,x6, loop
   
5. Criar a nova instrução SW rs2,im,rs1 que tem o significado mem[rs1] = rs2-im. Marcar com Q2 as linhas afetadas no código verilog e adicionar novas linhas se necessário. O opcode será 0x43. Fazer as alterações no datapath

6. Modifique o código Verilog para Incluir a Instrução ADD2 RD,RS1,RS2; onde RD ← 2*RS1 + RS2. Faça
anotações no desenho do Datapath. Suponha o opcode 12 para ADD2. Preencha todas as linhas do
datapath com a execução do ADD2 R2,R4,R5.

7. Implemente no Verilog uma instrução BEQI RS1,RS2 que faz PC = PC+Mem[RS1] se RS1 == RS2, senão
PC=PC+4. O Opcode é 15. Desenhe as alterações no DataPath. Preencha as linhas com os valores para a
instrução BEQI R10,R2.

8. Execute o trecho abaixo. Suponha o LW que executa no ciclo 1. Desenhe no Datapath para o ciclo 7
todos os valores nos fios. Qual é o valor final de R1 no ciclo 7 ? Qual é o valor de PC ?
0:LW R3,4(R4)
4:SW R3,8(R4)
8:ADD R1,R3,R0
12:BEQ R1,R2,-3
16:ADDI R1,R1,5
20:ADDI R1,R1,5
24:ADDI R1,R1,5
28:ADDI R1,R1,5

9. Fazer uma instrução ADDF RD,RS1,RS2 para somar ponto flutuante com a representação de 7 bits.
10. Fazer uma instrução MULF RD,RS1,RS2 para multiplicar ponto flutuante com a representação de 7 bits.
11. Fazer uma instrução BITC RD,RS1 que irá contar os bits de RS1 que são "1" e colocar o valor da contagem em RS1.
12. Fazer uma uns
 

Provas antes 2021 são para MIPS, adaptar RS é RS1, RT é RS2

* [prova2 19](https://drive.google.com/file/d/1cNYYMtrTVtqleNN_7PsVwupjGDqVdyUC/view?usp=sharing)
* [prova 18](https://drive.google.com/file/d/1cNYYMtrTVtqleNN_7PsVwupjGDqVdyUC/view?usp=sharing)
* [prova 19a](https://drive.google.com/file/d/11Ho6w5Exwj3qlrGHlrQw378t48tKWlOy/view?usp=sharing)
* [outra prova](https://docs.google.com/document/d/1fYTKwIqQEAoEE1nhp1fMxruU1-qj9RYtPXkTII0JIoE/edit?usp=sharing)
  
