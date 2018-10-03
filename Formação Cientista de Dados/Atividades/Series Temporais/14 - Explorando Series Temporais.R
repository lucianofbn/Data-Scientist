# -> Explorando Series Temporais

AirPassengers

start(AirPassengers)
end(AirPassengers)
plot(AirPassengers)

plot(aggregate(AirPassengers)) #High tendency
monthplot(AirPassengers) #July and August had higher scores

subst = window(AirPassengers, start = c(1960,1), end = c(1960,12))
subst
plot(subst) #more details in a year