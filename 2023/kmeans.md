# Algoritmo Kmeans

* 2 Centroides
* 2 Dimensões
  ![](http://mines.humanoriented.com/classes/2010/fall/csci568/portfolio_exports/mvoget/cluster/kmeans_diagram.png)
* Centroide 1 armazenar GP e GP+4
* Centroide 2 armazenar GP+8 e GP+12
* Vetor numero de itens a partir de GP+16, [x1,y1,x2,y2,....,-1] com -1 para terminar
* Recalcular os centroides e atualizar na memoria
* Fazer apenas 1 rodada
* Usar distância de euclides se fazer a raiz quadrada

## Caso teste Funcao identidade

* C1 = 3,3
* C2 = 10,10
* Vetor = 0,0,1,1,2,2,3,3,.....,20,20,-1
* Qual será a resposta ?
