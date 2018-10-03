# -> Previsão de Series Temporais (Predict Extrapolation)

#simples method:
mean(AirPassengers)

#last year:
mean(window(AirPassengers, star=c(1960,1), end=c(1960,12)))

#Moving Average:
install.packages("forecast")
library(forecast)
mediamovel = ma(AirPassengers, order=12)
mediamovel
previsao = forecast(mediamovel, h=12)
previsao
plot(previsao)

#arima more precisely
arima = auto.arima(AirPassengers)
arima
previsao = forecast(arima, h=12)
previsao
plot(previsao)