# 1. Processador SINGLE
## 1.1 Referências de Apoio

[RISC-V Instruction Formats Instructor: Steven Ho](https://inst.eecs.berkeley.edu/~cs61c/resources/su18_lec/Lecture7.pdf)
[Simulador Venus Risc-V](https://www.kvakil.me/venus/)  

## 1.2 Capítulo 4 Patterson & Hennessy

[Cap 4](https://docs.google.com/presentation/d/1ztqfccs7TybpBk6Xqyg3BRS_BEc2WtihyqBCcf3xrYM/edit?usp=sharing)

## 1.3 Desenhando no Caminho de Dados (datapath)

[Playlist das instruções de lw, add, addi, beq, sw](https://www.youtube.com/playlist?list=PLcvOyD_LMr6mFm26DMPe7K3OSu-Xg__Qw)

[Desenhos](https://github.com/arduinoufv/inf250/tree/master/Processador_single_RISCV/download)


## 1.4 Colabs com Atividades

[Playlist de Video com explicações do Colab e do Trabalho 7](https://www.youtube.com/playlist?list=PLcvOyD_LMr6mU_meF6qWvihjkHF-uvOyv)

1. [Colab da Aula  - Introdução ao Risc-V](https://colab.research.google.com/drive/1XkxRqHZj5ThDPqzUIhUvCuLqHXkpQjmR?usp=sharing)
2. [Trabalho 7 -  Single - Criar um colab com Risc-V Single para executar os exercícios 1 e 3 destes slides do trabalho 5](https://colab.research.google.com/drive/1PEg0gvAXiHs0GhQWVhOvm9gOVtZnkOgG?usp=sharing#scrollTo=Fp5Rgb6pb6w6)  
      * [slide do trabalho 5](https://docs.google.com/presentation/d/1tb34UEvhoxoEdC1_fbXu3UY-vA_RvBoIy57_NG5N2Qc/edit#slide=id.p7)
3. [Trabalho 8 - Single - Criar um colab com Risc-V Single para os exercícios 1 e 3 do Trabalho 6](https://colab.research.google.com/drive/1FIC4w17bZtIr2djhGwYvGQNEEzwl87vk?usp=sharing) 
      * [slide do trabalho 6](https://docs.google.com/document/d/1wMJk3otIeWT4rnDVzL0sVWsuRHCk6-ejPcGKlKKMZQI/edit?usp=sharing)
      * Instrução de **Multiplicação**, na [página 105 do Manual RISC-V](https://riscv.org//wp-content/uploads/2017/05/riscv-spec-v2.2.pdf) tem o formato da instrução mul. A diferença está no campo F7 em relação ao ADD, SUB, ... 
      * Sugestão para MUL, no estágio de execução no **module alucontrol**, acrescentar o tratamento do MUL para gerar **ALUopcode** que não foi usado ainda. No módulo ALU tratar o novo código que você criou para fazer **A * B**.
      * [video para multiplicação](https://youtu.be/kEYH77u0P8U)
4. [Solucao do Trabalho 8 ](https://colab.research.google.com/drive/1ZGmsi4Ucg58pXRXq4NdgnshPPV9dw65r?usp=sharing)      

## 1.5 Observações sobre Desvios Incondicional

## 1.6 Novas instruções - Trabalho 9

[playlist com dicas](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lrAXquopQQ5q7MZzpoXHv_)

### Exercícios do Livro 
#### 4.11 Examine the difficulty of adding a proposed lwi.d rd, rs1,rs2 (“Load With Increment”) instruction to RISC-V. Interpretation: Reg[rd]=Mem[Reg[rs1]+Reg[rs2]]
* 4.11.1 [5] <§4.4> Which new functional blocks (if any) do we need
for this instruction?
* 4.11.2 [5] <§4.4> Which existing functional blocks (if any) require
modification?
* 4.11.3 [5] <§4.4> Which new data paths (if any) do we need for
this instruction?
* 4.11.4 [5] <§4.4> What new signals do we need (if any) from the
control unit to support this instruction?
#### 4.12 Examine the difficulty of adding a proposed swap rs1, rs2
instruction to RISC-V.
Interpretation: Reg[rs2]=Reg[rs1]; Reg[rs1]=Reg[rs2]
* 4.12.1 [5] <§4.4> Which new functional blocks (if any) do we need
for this instruction?
* 4.12.2 [10] <§4.4> Which existing functional blocks (if any) require
modification?
718
* 4.12.3 [5] <§4.4> What new data paths do we need (if any) to
support this instruction?
* 4.12.4 [5] <§4.4> What new signals do we need (if any) from the
control unit to support this instruction?
* 4.12.5 [5] <§4.4> Modify Figure 4.21 to demonstrate an
implementation of this new instruction.

#### 4.13 Examine the difficulty of adding a proposed ss rs1, rs2, imm
(Store Sum) instruction to RISC-V.
Interpretation: Mem[Reg[rs1]]=Reg[rs2]+immediate
* 4.13.1 [10] <§4.4> Which new functional blocks (if any) do we
need for this instruction?
* 4.13.2 [10] <§4.4> Which existing functional blocks (if any) require
modification?
* 4.13.3 [5] <§4.4> What new data paths do we need (if any) to
support this instruction?
* 4.13.4 [5] <§4.4> What new signals do we need (if any) from the
control unit to support this instruction?
* 4.13.5 [5] <§4.4> Modify Figure 4.21 to demonstrate an
implementation of this new instruction.

#### Como testar as novas instruções

Vocês tem duas opções: (a) binário ou (b) hexadecimal. Você terá que criar o código manual, uma vez que o Venus não irá gerar sua nova instrução e inserir no módulo de fetch.

* binário
``` 
%%writefile fetch.v

module fetch (input zero, rst, clk, branch, input [31:0] sigext, output [31:0] inst);
  
  wire [31:0] pc, pc_4, new_pc;

  assign pc_4 = 4 + pc; // pc+4  Adder
  assign new_pc = (branch & zero) ? pc + sigext : pc_4; // new PC Mux

  PC program_counter(new_pc, clk, rst, pc);

  reg [31:0] inst_mem [0:31];

  assign inst = inst_mem[pc[31:2]];

  initial begin
    // Exemplos


inst_mem[0] <= 32'b00000000100100010000001110110011;
inst_mem[1] <= 32'b01000000100100010000001110110011;
inst_mem[2] <= 32'b00000000100100010110001110110011;
inst_mem[3] <= 32'b11111111111100000000010010010011;
inst_mem[4] <= 32'b00000000010101001001001110110011;

....
```
* Modo Hexadecimal, usar inst_mem[0] <= 32'hCODIGOHEXA; .... Se seu código tem mais instruções que o Venus conhece, então usa NOP no VENUS que você depois substitui pela sua instrução nova.

[solução dos exercicios 4.11,12 e 13](https://colab.research.google.com/drive/1dhipFfCcDVyPa6CPodQ9vRIMqMyyMVtz?usp=sharing)

# Colab de 2021


[Single RiscV ordenar 3 e soma float com documentacao do Waveform](https://colab.research.google.com/drive/1-xRwusp_kPZuzNNJFEuTpoVQdVUTfBhj?usp=sharing)

[Single RiscV com porduto escalar e multiplicacao de matrizes](https://colab.research.google.com/drive/1e8-UNjNCxXKZ9t1PrGToDmKMZtpflUOX?usp=sharing)

# Colab de 2022

[Verilog code for dissambler](https://github.com/BrunoLevy/learn-fpga/blob/master/FemtoRV/TUTORIALS/FROM_BLINKER_TO_RISCV/riscv_disassembly.v)
