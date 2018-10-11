# -> Grafos Clássicos
install.packages("igraphdata")
library(igraphdata)
library(igraph)

data("Koenigsberg")
plot(Koenigsberg)

#verificar o grau
degree(Koenigsberg, mode = "all")

data(kite)
plot(kite)

data("UKfaculty")
plot(UKfaculty)
comun = cluster_edge_betweenness(UKfaculty)
plot(comun, UKfaculty)