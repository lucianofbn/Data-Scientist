# -> Regressão Linear Simples
dim(cars)
head(cars)

#1 Verificar a correlação do conjunto de dados cars.
cor(cars) #Considerada forte quando o valor se aproxima de 1 ou -1.

#modelo
modelo = lm(speed ~ dist, data=cars)
modelo
plot(modelo)

#plot
plot (speed ~ dist, data = cars)
abline(modelo)

#Formula de previsão: Interseção + declive(inclinação) * valor que deseja prever.
#Encontrando coeficiente:
modelo$coefficients
#previsão manual:
modelo$coefficients[1] + modelo$coefficients[2] * 22
#utilizando predict:
predict(modelo,data.frame(dist=22))
predict(modelo,data.frame(dist=50))



