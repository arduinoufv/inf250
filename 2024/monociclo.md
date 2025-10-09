# Monociclo

1. [Trabalho de 2023 com matplot Lib + Verilog](https://colab.research.google.com/drive/170qxfdCPs-d4qSeHA-WC6UKM5jMce78g?usp=sharing)
2. [Formato das instrução no Excalidraw](https://excalidraw.com/#json=OWxmA8vHZD7wwkV6M96rF,XgiiwzUN-kJ1om3G2sZsDg)
3. [5 tipos de instruções e seu funcionamento no Datapath - videos](https://www.youtube.com/playlist?list=PLcvOyD_LMr6mZsNVA2Q9lyTij7zgk454p)
4. [Colab com Montador Python e Simulador Verilog](https://colab.research.google.com/drive/1a1dwiNJMDLUTf2lX_ShfILq77r4PWP7C?usp=sharing) e [uma versão passo a passo com o código Verilog por partes](https://colab.research.google.com/drive/1HsQPjUu4DgtQPbAmj92oQVWkJ-l7wYzB?usp=sharing)

# Trabalho de 2025

## Parte I - Novas Instruções Monociclo

### Float
* Fazer um código assembler para Soma e Multiplicação com o Risc-V padrão do [Colab com Montador Python e Simulador Verilog](https://colab.research.google.com/drive/1a1dwiNJMDLUTf2lX_ShfILq77r4PWP7C?usp=sharing) (versão sem instruções adicionais)
*  Código deve usar uma representação de 16 bits com 1 de sinal, 8 de expoente e 7 de mantissa. Deve considerar a existência de 0.
*  Fazer duas novas instruções addf rd,rs1,rs2 e multf rd,rs1,rs2 que façam diretamente a instrução na ALU. Implementar com um módulo verilog a parte o somador e mulplicador de float.
*  Comparar o resultado com a inclusão da nova operação da versão em software e em hardware

### Load 
* Adicionar uma nova instrução que faça **ldinc4 rd, rs1, rs2** que faz
  ```
  if rs2 > 0
      rd = mem[rs1]
      rs2--, rs1+=4
      pc = pc - 4
  else
     pc = pc+4
  ```
### Store

### Desvio


## Datapath

![](https://media.cheggcdn.com/media/5b4/5b4b57d4-1cd7-4e95-86d6-edb7caafc215/phpn5NF0U)



## Colabs

2. [Versão com Inkscape passo a passo para 2024](https://colab.research.google.com/drive/1HsQPjUu4DgtQPbAmj92oQVWkJ-l7wYzB?usp=sharing)
3. [Playlist Video da descriçao do Código Verilog do RiscV](https://www.youtube.com/playlist?list=PLcvOyD_LMr6mgOu3sOujBNe7obnuVgjlG)
4. [Playlist Video dos tipos de Instrução no Desenho Inkscape: Add, Addi, Lw, Sw, Beq](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lxjcBPDGlxkU8SZPOTd4xn)

* [Simulador com desenho do Datapath](https://jesse-r-s-hines.github.io/RISC-V-Graphical-Datapath-Simulator/)
* [Outro simulador online com código assembly, recursos de I/O e principais partes internas](https://eseo-tech.github.io/emulsiV/)




## Referências de Apoio

[RISC-V Instruction Formats Instructor: Steven Ho](https://inst.eecs.berkeley.edu/~cs61c/resources/su18_lec/Lecture7.pdf)

[Cap 4](https://docs.google.com/presentation/d/1ztqfccs7TybpBk6Xqyg3BRS_BEc2WtihyqBCcf3xrYM/edit?usp=sharing)

[Desenhos de 2021](https://github.com/arduinoufv/inf250/tree/master/Processador_single_RISCV/download)



-------------------------------------------------

**Material de 2023**


# Exercicios para Prova

* [Completar com valores e marcar as linhas para Datapath e instruções](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lwiTYTHD-EwGMW3T9gLIkK)
* [Aula de Revisão para questões 1 e 2 da Prova: Datapath+verilog e Novas Instruções](https://www.youtube.com/playlist?list=PLcvOyD_LMr6n2g8IEfzXRHoNbGZRLNBBX)
    
* [link para codigo Verilog que estará na Prova e o Datapath](https://excalidraw.com/#json=M8B-WpPT-m0Ah2r_haFEt,tAYH-lBVh3ge8ooSSVPjDA)
* [Questao 1 - Exemplo excalidraw da Instrução SW x7,-4(x3) que está no video 5 da revisão Parte I](https://excalidraw.com/#json=6OkqijnGZXEJ0Ex0SrOrg,9M7VQNn-b5g_Tdg_I1Dpzw)
* [Questao 2 - Criar novas Instruções](https://youtu.be/cCmXmIowcX4) + [desenho excalidraw](https://excalidraw.com/#json=7yd8Ib-dvDZpNL5WWewNN,V-wvxFnf7mMzx-Mb1T1uyw)
      * uma instrução BEQI Rs1,Rs2 que faz PC = PC+Mem[RS1] se RS1 == Rs2, senão PC=PC+4. O Opcode é 15.   
  
# Trabalho 4 (3 pontos + 3 extras) para 16/11

* [Link para Colab](https://colab.research.google.com/drive/1fK1KoWXSxkAaw4NLHXgh6Xnwi8SYUcVT?usp=sharing)
* [playlist video](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lJfzPk3wmMqBp7vgL_EtJs)
* [Link para envio trabalho 16/11](https://forms.gle/CrRkhvL1SQmWeYw36)
  

## Exercícios do Livro 
### 4.11 Examine the difficulty of adding a proposed lwi.d rd, rs1,rs2 (“Load With Increment”) instruction to RISC-V. Interpretation: Reg[rd]=Mem[Reg[rs1]+Reg[rs2]]
* 4.11.1 [5] <§4.4> Which new functional blocks (if any) do we need
for this instruction?
* 4.11.2 [5] <§4.4> Which existing functional blocks (if any) require
modification?
* 4.11.3 [5] <§4.4> Which new data paths (if any) do we need for
this instruction?
* 4.11.4 [5] <§4.4> What new signals do we need (if any) from the
control unit to support this instruction?
### 4.12 Examine the difficulty of adding a proposed swap rs1, rs2
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

### 4.13 Examine the difficulty of adding a proposed ss rs1, rs2, imm
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

[material anos anteriores](https://github.com/arduinoufv/inf250/tree/master/Processador_single_RISCV)
