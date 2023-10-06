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

# Questão Parte B de Máquina de estados

## Exemplo 1

### Montar a Tabela para o circuito abaixo e depois montar o diagrama. 
```
module statePorta(input clk, input res, input d, output t);
wire [1:0] e;
wire [1:0] p;
wire [1:0] state;
assign state = e;
assign t = e[0] & e[1];
assign p[0] = (~d);
assign p[1] = (e[0] & d) | (e[1] & ~e[0] & ~d);
ff  e0(p[0],clk,res,e[0]);
ff  e1(p[1],clk,res,e[1]);
endmodule
```
### Montar a descrição comportamental em Verilog (case, if, ...)

## Exemplo 2

### Montar a Tabela para o circuito abaixo e depois montar o diagrama. 
```
module statePorta(input clk, input res, output A, output B);
wire [2:0] e;
wire [2:0] p;
wire [2:0] state;
assign state = e;
wire x,y;
  assign p[2] = ~e[2] & ~e[0];
  assign x = ~e[2] & e[1];
  assign p[1] = ~e[0] & x;
  assign y = e[2] & e[1];
  assign A = ~e[0] & ~y;
  assign p[0] = 1'b0;
  assign B = p[1];
ff  e0(p[0],clk,res,e[0]);
ff  e1(p[1],clk,res,e[1]);
ff  e2(p[2],clk,res,e[2]);
endmodule
```
### Montar a descrição comportamental em Verilog (case, if, ...)


