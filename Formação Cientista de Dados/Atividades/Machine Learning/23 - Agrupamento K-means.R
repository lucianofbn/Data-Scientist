# -> Agrupamento K-means

dim(iris)
head(iris)
summary(iris)

cluster =  kmeans(iris[1:4], centers = 3)
cluster

table(iris$Species, cluster$cluster)

plot(iris[,1:4], col=cluster$cluster)