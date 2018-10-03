# -> Decomposição de Series Temporais

plot(AirPassengers)

dec = decompose(AirPassengers)
dec

dec$seasonal
dec$trend
dec$random

plot(dec$seasonal)
plot(dec$trend)

plot(dec) #all data