#Agrupamento com K-medoids - cluster
# Um ponto real de dado, mais representativo, agrupra os dados.

install.packages("cluster", dependencies = T)
library(cluster)

cluster = pam(iris[,1:4], k=3)
cluster

plot(cluster)

table(iris$Species, cluster$cluster)