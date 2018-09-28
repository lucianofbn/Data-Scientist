#DISTRIBUIÇÕES NORMAIS
#1 Qual a probabilidade de você retirar um objeto com peso menor que 6kg (Dado que: media=8, dp = 2).
pnorm(6,8,2)

#2 Qual a probabilidade de você retirar um objeto com peso maior que 6kg (Dado que: media=8, dp = 2).
pnorm(6,8,2, lower.tail=F)
1 - pnorm(6,8,2)

#3 Qual a chance de você tirar um objeto que tenha menos de 6kg ou mais de 10kg (Dado que: media=8, dp = 2).
pnorm(6,8,2) + pnorm(10,8,2, lower.tail=F)

#4 Qual a chance de se tirar um objeto que tenha menos de 10kg e mais de 8kg (Dado que: media=8, dp = 2).
pnorm(10,8,2) - pnorm(8,8,2, lower.tail = F)

#5 Gerar dados aleatório que estão normalmente distribuídos
x = rnorm(100)
x

#6 Plot esses dados para verificar a simetria entre eles.
qqnorm(x)

#7 Insira a linha de melhor ajuste.
qqline(x)

#8 Faca um teste de shapiro-wilk nos dados.
shapiro.test(x)
