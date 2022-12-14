# 1. Processador Pipeline
## 1.1 Referências de Apoio

* [RISC-V Instruction Formats Instructor: Steven Ho](https://inst.eecs.berkeley.edu/~cs61c/resources/su18_lec/Lecture7.pdf)
* [Simulador Venus Risc-V](https://www.kvakil.me/venus/) 
* [Webriscv](https://webriscv.dii.unisi.it/)


## 1.2 Capítulo 4 Patterson & Hennessy

* [Cap 4](https://docs.google.com/presentation/d/1ztqfccs7TybpBk6Xqyg3BRS_BEc2WtihyqBCcf3xrYM/edit?usp=sharing)

## 1.3 Videos
* [Playlist 1 de 2022: Introdução ao Pipeline](https://www.youtube.com/playlist?list=PLcvOyD_LMr6nh7MBj-bq3hAXLJaYl8_Qx)
* [Playlist 2 de 2022: Execução com Pipeline 5 Estágios sem encaminhamento (forward), sem hazard de Load, com desvio no 4 estágio](https://www.youtube.com/playlist?list=PLcvOyD_LMr6kMTtfwxiGEnGkbdRikKBbt)

## 1.4 Prova 3

* [Exemplo de prova](https://docs.google.com/document/d/17g8LtWZdHjnSUcYCbSG2COamPq_C6kX0q916o853VKY/edit?usp=sharing) e [Playlist com resolucao](https://www.youtube.com/playlist?list=PLcvOyD_LMr6k52nw4tAydqUz6lb3VRQ7O), as [figuras estão separadas aqui](https://docs.google.com/presentation/d/16FuC8rgQHVuDjy45zuZHFk0I-aHa96aSF-AFza3qauQ/edit?usp=sharing)
* [slides com os datapaths](https://docs.google.com/presentation/d/1IgIKxOrqwadU0sN3GxPt8boIPTwe8aiGKqHJ0VyEK8M/edit?usp=sharing)
* [Playlist de Revisao da Prova 3](https://www.youtube.com/playlist?list=PLcvOyD_LMr6m9hRk8McWVW63-ojUrHBUp)

* Executar nos Caminhos de dados:
   * [5 Estágios sem encaminhamento (forward), sem hazard de Load, com desvio no 4 estágio](https://www.youtube.com/playlist?list=PLcvOyD_LMr6kMTtfwxiGEnGkbdRikKBbt)
   * [5 Estágios sem encaminhamento (forward), sem hazard de Load, com desvio no 2 estágio](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lwLC27VqprRSyNIqiqV5Ml)
   * 5 Estágios com encaminhamento (forward), com hazard de Load, com desvio no 4 estágio
   * 5 Estágios com encaminhamento (forward), com hazard de Load, com desvio no 2 estágio
   * 5 Estágios com encaminhamento (forward), com hazard de Load, com desvio com atraso
   * 5 Estágios com encaminhamento (forward), com hazard de Load, com forward de load/store
 

## 1.5 Implementação em Verilog com Colab
*  [O que é uma pipeline](https://colab.research.google.com/drive/1IiRGHawF7l5R_PfUtNiirdMp6u5YKTVQ?usp=sharing)



## [Trabalho de Pipeline 15/12 Agendar apresentação do GRUPO, pode ser meeting, nota individual com arguição de cada integrante do grupo](https://colab.research.google.com/drive/1DH1vJH-RvLof7AEjKyFpFilaC4d0hvLW?usp=sharing)

* [**Clique aqui para agendar**](https://docs.google.com/document/d/1wbITCGEnCTA8nQirkahLTYwzMHBaP_d9c2b1kSvuaPM/edit?usp=sharing)

* [Assistir primeiro com dicas rápidas para depois ver o outro playlist](https://www.youtube.com/playlist?list=PLcvOyD_LMr6kMsoWg9IGRj1J-ncq_dIot)
* [colab com códigos de teste](https://colab.research.google.com/drive/1KRcbL9tVtG9rS6Fp4c3p3-BxuyViyhZ_?usp=sharing)
* [desenho do forward e hazard para voce completar e documentar seu trabalho](https://excalidraw.com/#json=N1MhgbcmsaQHovzLB7pAq,tb5F-ZMZo-b9pOlgDKZNyQ)
* [Playlist do Trabalho Risc-V Pipeline](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lKJ-mc9RLyVcAiXBBgU3zO)


# Material de **2021** que será re-organizando (em construção)

* [Colab 2022 - Risc V **em construção**](https://colab.research.google.com/drive/1kg6gkRT1AL5b0oyjJeS2eJgKopQWC3a6?usp=sharing)

* [Colab com implementação em Verilog e Trabalho 12](https://colab.research.google.com/drive/1npTGdSz9p_U8yAka_CSvVE775a-talJf?usp=sharing)

* [Riscv pipeline de 2021 branch 2 stage com forward_teste de ordena3, soma float, produto escalar, matmul 3x3](https://colab.research.google.com/drive/1772rQAbKzk3NLSNou_iHZG6L5c5eCXSn?usp=sharing)
* [Playlist com explicações detalhadas de 2021 da Implementação](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lOBLGCMl3VdmsASATxiB9s)
* [Video com algumas explicações de 2021](https://youtu.be/JXT9LKVEn18)



## 1.5 Execução com problemas de Dependência de dados e de controle

[Playlist de Vídeo com stall devido aos hazard de dados e desvios, trabalho 10](https://www.youtube.com/playlist?list=PLcvOyD_LMr6lOLn3rrDkz79GJ6Fy0Zz1j)

## 1.6 Solução com Forwarding, Hazard de Load, reordenação de instruções e desvio com atraso

[playlist de vídeo com forward, hazard e desvio com atraso para trabalho 11](https://www.youtube.com/playlist?list=PLcvOyD_LMr6mkDGK9GjYM3GQJKYhi97JV)


