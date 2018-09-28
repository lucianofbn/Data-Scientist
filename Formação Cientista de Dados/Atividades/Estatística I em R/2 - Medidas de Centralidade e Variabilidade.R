#Medidas de Centralidade e Variabilidade

#1 Encontre a média, mediana, desvio padrão e divida em quartis o salário dos jogadores.
jogadores = c(40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000)
mean(jogadores)
median(jogadores)
quartis = quantile(jogadores)
quartis
sd(jogadores)
summary(jogadores)
