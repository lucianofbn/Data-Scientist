# -> Caminhos e Distâncias de Grafos
library(igraph)

dist = graph(edges=c("A","C","A","B","B","E","B","F","C","D","G","H","D","H","E","H","F","G"),directed=TRUE)
plot(dist)

E(dist)$weight = c(2,1,2,1,2,1,1,3,1)
plot(dist, edge.label=E(dist)$weight)

#distância mais curta de A até H
distances(dist, V(dist)$name=="A", V(dist)$name=="H")

#retornando os vértices do caminho mais curto
caminho = shortest_paths(dist, V(dist)$name=="A", V(dist)$name=="H", output = c("both"))
caminho$vpath

#colorindoo caminho mais curto
for(i in 1:length(V(dist)))
{
  V(dist)$color[i] <- ifelse(i  %in% as.vector(unlist(caminho$vpath))
                             ,"green","gray")
}

for(i in 1:length(E(dist)))
{
  E(dist)$color[i] <- ifelse(i  %in% as.vector(unlist(caminho$epath))
                             , "green","gray")
}

#impressão
plot(dist, edge.label = E(dist)$weight)

caminho = shortest_paths(dist,V(dist)$name=="H",V(dist)$name=="A", output=c("both"))
