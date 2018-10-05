# -> Ensamble Learning - Aprendizado em grupo.
install.packages("randomForest", dependencies = T)
library(randomForest)

credito = read.csv(file.choose(), sep = ",", header = T)
dim(credito)
amostra = sample(2,1000, replace = T, prob = c(0.7,0.3))
creditotreino = credito[amostra == 1,]
creditoteste = credito[amostra == 2,]

floresta = randomForest(class ~ ., data=creditotreino, ntree=100, importance=T)
varImpPlot(floresta)

previsao = predict(floresta, creditoteste)

confusao = table(previsao, creditoteste$class)
confusao

taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto

taxaerro = (confusao[2] + confusao[3]) / sum(confusao)
taxaerro

