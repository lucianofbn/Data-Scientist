#Distribuição Binominal

#1 Se eu jogar uma moeda 5 vezes qual a probabilidad de dar cara 3 vezes?
#Dica: num de sucesso(você busca)/espaço amostral ou total de tentativas/prob do evento
dbinom(3,5,0.5)

#2 Se você passar 4 sinais de 4 tempos cada. Qual a probabilidade de você pegar 0,1,2,3 ou 4 sinais verdes?
dbinom(0,4,0.25)
dbinom(1,4,0.25)
dbinom(2,4,0.25)
dbinom(3,4,0.25)
dbinom(4,4,0.25)
pbinom(4,4,0.25) #prob acumulativa

#3 Se você fizer uma prova de 12 questões e você não estudou nada. Qual a probabilidade de você acertar 7 questões, sabendo que cada questão possui 4 alternativas?
dbinom(7,12,0.25)
