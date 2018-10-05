# -> Agrupamento Fuzzy - C-means - e1071
#(Uma instância pode pertencer a mais de um grupo, segundo uma probabilidade)

library(e1071)

cluster = cmeans(iris[,1:4], center=3)
cluster

table(iris$Species, cluster$cluster)
