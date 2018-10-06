# -> Neural Networks - Perceptron Multilayer
#instal.packages("neuralnet")
library(neuralnet)

#clone dataset
myiris = iris

#binary columns:
myiris = cbind(myiris, myiris$Species == 'setosa')
head(myiris)
tail(myiris)
myiris = cbind(myiris, myiris$Species == 'versicolor')
myiris = cbind(myiris, myiris$Species == 'virginica')
summary(myiris)
names(myiris)[6] = 'setosa'
names(myiris)[7] = 'versicolor'
names(myiris)[8] = 'virginica'
summary(myiris)

amostra = sample(2,150, replace=T, prob=c(0.7,0.3))
myiristreino = myiris[amostra==1,]
myiristeste = myiris[amostra==2,]
dim(myiristreino)
dim(myiristeste)

#model
modelo = neuralnet(setosa + versicolor + virginica ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, myiristreino, hidden=c(5,4))
print(modelo)
plot(modelo)

teste = compute(modelo, myiristeste[,1:4])
teste$net.result

#create dataframe
resultado = as.data.frame(teste$net.result)
names(resultado)[1] = 'setosa'
names(resultado)[2] = 'versicolor'
names(resultado)[3] = 'virginica'
head(resultado)

#newcolumn
resultado$class = colnames(resultado[,1:3])[max.col(resultado[,1:3], ties.method = 'first')]
head(resultado)
resultado

#table confusion
confusao = table(resultado$class, myiristeste$Species)
sum(diag(confusao) * 100 / sum(confusao))