# -> Distribui��o T de Student - Indicada para amostras menores que 30.

#1 Uma pesquisa mostra que cientistas de dados ganham 75R$/h. Uma amostra de 9 cientistas � apresentada e perguntado o sal�rio.
# m�dia = 75, amostra = 9, dp = 10; Necess�rio verificar tabela Z.

#1.1 Qual a probabilidade de selecionar um cientista de dados e o sal�rio ser menor que 80R$/h?
pt(1.5, 8)

#1.2 Qual a probabilidade de selecionar um cientista de dados e o sal�rio ser maior que 80R$/h?
pt(1.5,8, lower.tail = F)
1 - pt(1.5, 8)
