Todos os exemplos executam no [simulador Venus](https://www.kvakil.me/venus/)

# Instruções básicas

* Aritméticas e lógicas com dois operandos: **add,sub,and,mul,**...
* Aritméticas e lógicas com 1 operando + constante: (imediato): **addi, andi, ...**

  ## Exemplo 1
  """
  addi t0,x0,3  # Registrador t0 = x0 + 3 = 3, x0 tem sempre 0
  addi t1,x0,10 # t1 = x0+10=10
  add t2,t0,t1  # t2 = 3 + 10 = 13 
  """
