# -> Modelo e Produ��o

novocredito = read.csv(file.choose(), sep = ",", header = T)
novocredito
dim(novocredito)

#newpredict
predict(modelo, novocredito)