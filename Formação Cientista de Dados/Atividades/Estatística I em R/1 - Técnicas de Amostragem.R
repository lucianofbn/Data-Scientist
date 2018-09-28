# -> Técnicas de Amostragem

#1 Gerar 150 números aleatórios de zero e um.
amostra = sample(c(0,1), 150, replace = TRUE, prob=c(0.5,0.5))
amostra

#2 Calcule o valor de zeros e uns.
length(amostra[amostra==0])
length(amostra[amostra==1])
length(amostra[amostra==0]) + length(amostra[amostra==1])

#3 Crie uma forma de repetir um experimento com números aleatórios.
set.seed(2345)
sample(c(100),1)

# -> Amostra estratificada.
install.packages("sampling")
library(sampling)

#4 Amostra com 25 amostras de cada especie do dataset iris.
summary(iris)
amostrairis2 = strata(iris, c("Species"), size=c(25,25,25), method = "srswor")
summary(amostrairis2)

#5 A população da coluna education do dataset infert tem dados diversificados como gerar amostras proporciais baseadas nessa coluna?
summary(infert)

# Dica: amostra/população * valor que desejo para minha amostragem.
round(12/248 * 100)
round(120/248 * 100)
round(116/248 * 100)

amostra = strata(infert, c("education"), size=c(5,48,47), method = "srswor")
summary(amostra)

# -> Amostragem Sistemática
install.packages("TeachingSampling")
library(TeachingSampling)

#6 Gera o primeiro registro aleatório, depois, seleciona os registros com +10 de espaçamento.
amostra = S.SY(150,10)
amostra

#7 Aplique a seleção sistemática ao dataset iris. 
amostrairis = iris[amostra,]
amostrairis