# Somador Float em Risc-V

* Representação de 7 bits $2^{e-3} \cdot (1 + M)$
* Recebe dois números A e B, quaisquer ($a=b$, $a<b$ ou $a>b$)
* Calcula a soma e escreve o resultado na posicao de memoria GP
* Escreve em GP+4 o valor 0 se tudo ok, escreve 1 se teve erro arredondamento
* Escreve em GP+8 o valor 0 se tudo ok, escreve 1 se teve erro overflow

  ## Caso Teste 1

  A=B

  ## Caso Teste 2

  A> B

  ## Caso Teste 3

  A< B

  ## Caso Teste com erro de arredondamento

  ## Caso Teste com erro de Overflow
  
