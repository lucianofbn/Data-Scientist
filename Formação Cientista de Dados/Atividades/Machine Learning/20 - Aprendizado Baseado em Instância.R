# -> Aprendizado baseado em instância (Vizinho mais próximo)

install.packages("class", dependencies = T)
library(class)

head(iris)
dim(iris)

amostra = sample(2,150, replace = T, prob = c(0.7,0.3))
iristreino = iris[amostra == 1,]
classificar = iris[amostra == 2,]

dim(iristreino)
dim(classificar)

previsao = knn(iristreino[,1:4], classificar[,1:4], iristreino[,5], k=3)
table(classificar[,5], previsao)

fix(classificar)