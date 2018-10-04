# -> Modelo e Produção

novocredito = read.csv(file.choose(), sep = ",", header = T)
novocredito
dim(novocredito)

#newpredict
predict(modelo, novocredito)