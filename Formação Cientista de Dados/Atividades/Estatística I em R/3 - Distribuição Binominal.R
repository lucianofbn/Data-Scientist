#Distribui��o Binominal

#1 Se eu jogar uma moeda 5 vezes qual a probabilidad de dar cara 3 vezes?
#Dica: num de sucesso(voc� busca)/espa�o amostral ou total de tentativas/prob do evento
dbinom(3,5,0.5)

#2 Se voc� passar 4 sinais de 4 tempos cada. Qual a probabilidade de voc� pegar 0,1,2,3 ou 4 sinais verdes?
dbinom(0,4,0.25)
dbinom(1,4,0.25)
dbinom(2,4,0.25)
dbinom(3,4,0.25)
dbinom(4,4,0.25)
pbinom(4,4,0.25) #prob acumulativa

#3 Se voc� fizer uma prova de 12 quest�es e voc� n�o estudou nada. Qual a probabilidade de voc� acertar 7 quest�es, sabendo que cada quest�o possui 4 alternativas?
dbinom(7,12,0.25)
