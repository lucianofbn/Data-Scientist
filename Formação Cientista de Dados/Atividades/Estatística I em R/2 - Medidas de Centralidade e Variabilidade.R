#Medidas de Centralidade e Variabilidade

#1 Encontre a m�dia, mediana, desvio padr�o e divida em quartis o sal�rio dos jogadores.
jogadores = c(40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000)
mean(jogadores)
median(jogadores)
quartis = quantile(jogadores)
quartis
sd(jogadores)
summary(jogadores)
