### Gráficos

# -> Histograma
trees
summary(trees)
dim(trees)

hist(trees$Height)
hist(trees$Height, main = "Árvores", ylab="Frequência", xlab= "Altura", col="green")

hist(trees$Height, main = "Árvores", ylab="Frequência", xlab= "Altura", col="green", density = 20, breaks = 20)

# -> Densidade
densidade = density(trees$Height)
plot(densidade)

#Sobrepondo o histograma com o gráfico de densidade
hist(trees$Height, main=NULL, xlab = NULL)
par(new=TRUE)
plot(densidade)

# -> Dispersão
plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume, main = "Árvores", ylab="Circunferência", xlab = "Volume", col="blue", pch=3)
plot(trees$Girth, trees$Volume, main = "Árvores", ylab="Circunferência", xlab = "Volume", col="blue", pch=3, type = "l")
plot(jitter(trees$Girth), trees$Volume, main = "Árvores", ylab="Circunferência", xlab = "Volume", col="blue", pch=20)

# -> Dispersão com legendas
CO2
plot(CO2$conc, CO2$uptake, pch=20, col=CO2$Treatment)
legend("bottomright", legend=c("nonchilled", "chilled"), cex=1, fill = c("black","red"))

# -> Dividindo a tela
plot(trees)
split.screen(figs=c(2,2))

screen(1)
plot(trees$Girth, trees$Volume)

screen(2)
plot(trees$Girth, trees$Height)

screen(3)
plot(trees$Height, trees$Volume)

screen(4)
hist(trees$Volume)
#desfazer telas
close.screen(all=TRUE)

# -> Boxplot
boxplot(trees$Volume, main= "Árvores", xlab="Volume")

boxplot(trees$Volume, main= "Árvores", xlab="Volume", horizontal = T, col="red")

#retirar outiliers
boxplot(trees$Volume, main= "Árvores", xlab="Volume", horizontal = T, col="red", outline = F)

boxplot.stats(trees$Height)
boxplot(trees)

# -> Gráfico de barras e de Setores
InsectSprays

spray = aggregate( . ~ spray, data = InsectSprays, sum)
spray

#Barras
barplot(spray$count, col=gray.colors(6), xlab = "Spray", ylab = "Total", names.arg = spray$spray)
box()

#Pizza
pie(spray$count, labels = spray$spray, main="Spray", col=c(1:6))

#com legenda
pie(spray$count, labels = NA, main="Spray", col=c(1:6))
legend("topright", legend = spray$spray, cex=1, fill = c(1:6))

# -> Boxplot com Lattice
library(lattice)
bwplot(trees$Volume)

bwplot(trees$Volume, main="Árvores", xlab="Volume")

# -> Histograma com Lattice

histogram(trees$Volume, main="Árvores", labx="Volume", aspect=0.5,type="count", nint=10)
chickwts

#histograma condicional
aggregate(chickwts$weight, by=list(chickwts$feed), FUN=sum)
histogram(~weight | feed, data=chickwts)

#Densidade com Lattice
densityplot(CO2$conc)
densityplot(~ CO2$conc | CO2$Treatment, plot.points=F)

#Dispersão com Lattice
xyplot(CO2$conc ~ CO2$uptake)
# com variável categórica
xyplot(CO2$conc ~ CO2$uptake | CO2$Type)
xyplot(CO2$conc ~ CO2$uptake | CO2$Treatment)

#dotplot para comparar categorias
dotplot(esoph$alcgp ~ esoph$ncontrols, data=esoph)
dotplot(esoph$alcgp ~ esoph$ncontrols | esoph$tobgp, data=esoph)

#Gráfico 3D
cloud(decrease ~ rowpos * colpos, data=OrchardSprays)
cloud(decrease ~ rowpos * colpos, groups = treatment, data=OrchardSprays)

