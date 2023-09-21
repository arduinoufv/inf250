# Somador Float em Risc-V

* Representação de 7 bits $2^{e-3} \cdot (1 + M)$
* Recebe dois números A e B, quaisquer (a=b, a<b ou a>b)
* Calcula a soma e escreve o resultado na posicao de memoria GP
* Escreve em GP+4 o valor 0 se tudo ok, escreve 1 se teve erro arredondamento
* Escreve em GP+8 o valor 0 se tudo ok, escreve 1 se teve erro overflow
