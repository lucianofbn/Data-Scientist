# -> Árvores de Decisão - Verificar um bom e um mal pagador de crédito
install.packages("rpart", dependencies=T)
library(rpart)
credito = read.csv(file.choose(), sep = ",", header = T)

amostra = sample(2,1000, replace = T, prob = c(0.7,0.3))
creditotreino = credito[amostra==1,]
creditoteste = credito[amostra==2,]

#Method class for classification; Anova for Regression; rpart for both.
arvore = rpart(class ~ ., data = creditotreino, method="class")

#Visualization
print(arvore)
plot(arvore)
text(arvore, use.n = T, all = T, cex=.8)

#Predict prob for class
teste = predict(arvore, newdata=creditoteste)
teste

#Add new column for prob bad or good
cred = cbind(creditoteste, teste)
fix(cred)

#Add new column for result
cred['Result'] = ifelse(cred$bad >= 0.5, "bad", "good")
fix(cred)

#Table Confusion
confusao = table(cred$class, cred$Result)
confusao

taxaacerto = (confusao[1] + confusao[4]) / sum(confusao)
taxaacerto

taxaerro = (confusao[2] + confusao[3]) / sum(confusao)
taxaerro

