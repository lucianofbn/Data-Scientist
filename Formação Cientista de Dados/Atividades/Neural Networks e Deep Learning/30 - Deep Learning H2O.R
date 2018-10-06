# -> Deep Learning - Classificação com H²O

#imports
library(h2o)
h2o.init()
treino = h2o.importFile(file.choose())
teste = h2o.importFile(file.choose())

#visualization
dim(treino)
head(treino)
dim(teste)

#transform as factor
treino[,785] = as.factor(treino[,785])
teste[,785] = as.factor(teste[,785])

#model
modelo = h2o.deeplearning(x = colnames(treino[,1:784]), y="C785", training_frame = treino, validation_frame = teste, distribution = "AUTO", activation = "RectifierWithDropout", hidden = c(64,64,64), sparse = TRUE, epochs = 20)
plot(modelo)

#performance
h2o.performance(modelo)

#test predict
treino[20,785]
pred = h2o.predict(modelo, newdata = treino[20,1:784])
pred$predict