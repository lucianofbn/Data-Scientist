# -> Regress�o Linear Simples - PARTE 2

summary(cars)
head(cars)
modelo = lm(speed ~ dist, data=cars)
summary(modelo)

#Obter mais informa��es $; Residuais(Dist�ncia entre os pontos e a linha de melhor ajuste, acima + abaixo � -):
modelo$residuals

#Obter os valores ajustados:
modelo$fitted.values

#Plot valores ajustados x carxdist:
plot(modelo$fitted.values, cars$dist)