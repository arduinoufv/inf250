# Questão Parte A de Máquina de estados

## Exemplo 1

### Fazer o diagrama de estados
```
para uma máquina com 2 entradas A e B e uma saida L, onde L irá piscar 0,1...se A mudar de 0 para 1
 e depois irá parar  de piscar quando mudar novamente de 0 para 1. Com relação a B, se a saida L
estiver Ligada, B=1 mudara o padrão de piscar para 0, 1, 1, 0, 1,1,....ou seja, 
fica um clock em 0 e dois clocks em 1. Se B=0, piscará 0,1,0,1....alternando.
```

### Monte a descrição em Verilog
```
Com Tabela para o seu diagrama. Preencher 4 linhas da tabela, onde cada
linha tem um estado diferente.
```

## Exemplo 2

### Fazer o diagrama de estados
```
para uma máquina com 1 entrada A e tres saidas B,C,D, se A mudar de 0 para 1, B fica ligado, C irá piscar 0,1,0,1 e D desligado. Se A mudar de
1 para 0, C e D irão alternar, se C está ligado, D será desligado e B ficará desligado.
```

### Monte a descrição em Verilog
```
Com Tabela para o seu diagrama. Preencher 4 linhas da tabela, onde cada
linha tem um estado diferente.
```



