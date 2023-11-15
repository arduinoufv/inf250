# Exercicios para Prova

* [Completar com valores e marcar as linhas para Datapath e instruções](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lwiTYTHD-EwGMW3T9gLIkK)
* [Aula de Revisão para questões 1 e 2 da Prova: Datapath+verilog e Novas Instruções](https://www.youtube.com/playlist?list=PLcvOyD_LMr6n2g8IEfzXRHoNbGZRLNBBX)

* [Criar novas Instruções]()
      * uma instrução BEQI RS,RT que faz PC = PC+Mem[RS] se RS == RT, senão PC=PC+4. O Opcode é 15.   
  
# Trabalho 4 (3 pontos + 3 extras) para 16/11

* [Link para Colab](https://colab.research.google.com/drive/1fK1KoWXSxkAaw4NLHXgh6Xnwi8SYUcVT?usp=sharing)
* [playlist video](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lJfzPk3wmMqBp7vgL_EtJs)
* [Link para envio trabalho 16/11](https://forms.gle/CrRkhvL1SQmWeYw36)
  
# Single Cycle

* [playlist de Video](https://www.youtube.com/playlist?list=PLcvOyD_LMr6nd3-M5_7Ta5kHfxNqvAl67)
* [Colab da Implementação](https://colab.research.google.com/drive/1zu_QOlFuqM9g_nA5l16GKRIin5B0KbEA?usp=sharing)
* [Simulador com desenho do Datapath](https://jesse-r-s-hines.github.io/RISC-V-Graphical-Datapath-Simulator/)
* [Outro simulador online com código assembly, recursos de I/O e principais partes internas](https://eseo-tech.github.io/emulsiV/)

[Formato das instrução no Excalidraw](https://excalidraw.com/#json=OWxmA8vHZD7wwkV6M96rF,XgiiwzUN-kJ1om3G2sZsDg)

## Datapath

![](https://media.cheggcdn.com/media/5b4/5b4b57d4-1cd7-4e95-86d6-edb7caafc215/phpn5NF0U)


## Referências de Apoio

[RISC-V Instruction Formats Instructor: Steven Ho](https://inst.eecs.berkeley.edu/~cs61c/resources/su18_lec/Lecture7.pdf)

[Cap 4](https://docs.google.com/presentation/d/1ztqfccs7TybpBk6Xqyg3BRS_BEc2WtihyqBCcf3xrYM/edit?usp=sharing)

[Desenhos de 2021](https://github.com/arduinoufv/inf250/tree/master/Processador_single_RISCV/download)

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
