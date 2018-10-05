# -> Seleção de Atributos (library e1071)
library(e1071)

credito = read.csv(file.choose(), sep = ",", header = T)

amostra = sample(2,1000, replace = T, prob = c(0.7,0.3))
creditotreino = credito[amostra == 1,]
creditoteste = credito[amostra == 2,]
dim(creditotreino)
dim(creditoteste)


modelo1 = svm(class ~ ., creditotreino)

predicao1 = predict(modelo1, creditoteste)
predicao1

confusao1 = table(creditoteste$class, predicao1)
confusao1

taxaacerto1 = (confusao[1] + confusao[4]) / sum(confusao)
taxaerro1 = (confusao[2] + confusao[3]) / sum(confusao)

taxaacerto1
taxaerro1

# -> Fazendo a seleção de atributos: (FSelector) melhor desempenho com menos dados.
install.packages("FSelector", dependencies = T)
library(FSelector)

random.forest.importance(class ~ ., credito) #table more important

modelo2 = svm(class ~ checking_status + duration + credit_history + credit_amount + savings_status, creditotreino)
modelo2

predicao2 = predict(modelo2, creditoteste)
predicao2

confusao2 = table(creditoteste$class, predicao2)
confusao2

taxaacerto2 = (confusao[1] + confusao[4]) / sum(confusao)
taxaerro2 = (confusao[2] + confusao[3]) / sum(confusao)

taxaacerto2
taxaerro2

taxaacerto2 - taxaacerto1


