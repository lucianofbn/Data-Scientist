# -> Machine Learning (librarys: e1071 , klaR)

install.packages("e1071", dependencies=T)
library(e1071)

credito = read.csv(file.choose(), sep = ",", header = T)
head(credito)
summary(credito)
dim(credito)
fix(credito)

#slipt the data
amostra = sample(2,1000, replace=T, prob = c(0.7,0.3))
amostra

creditotreino = credito[amostra == 1,]
creditoteste = credito[amostra == 2,]

dim(creditotreino) #~70%
dim(creditoteste) #~30%

#model
modelo = naiveBayes(class ~ . , creditotreino)
modelo
class(modelo)

#predict
predicao = predict(modelo, creditoteste)
predicao

#table confusion for accuracy
confusao = table(creditoteste$class, predicao)
confusao

#hit rate
taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto

#miss rate
taxaerro = (confusao[2] + confusao[3]) / sum(confusao)
taxaerro