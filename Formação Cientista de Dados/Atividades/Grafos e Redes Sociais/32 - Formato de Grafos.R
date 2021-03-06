#-> Formatos e Impress�o de grafos - Entendendo o Igraph

#type: D
grafo2 = graph(edges = c(1,2,3,3,3,4,4,1))
plot(grafo2)
grafo2

#type: U (n direcionado)
grafo3 = graph(edges = c(1,2,3,3,3,4,4,1), directed = F)
plot(grafo3)
grafo3

#type: n = numero de v�rtices (criou 4 + 6 v�rtices isolados)
grafo4 = graph(edges = c(1,2,3,3,3,4,4,1), directed = F, n = 10)
plot(grafo4)
grafo4

#isolates = voc� determina os v�rtices que ficar�o isolados
grafo5 = graph(edges = c("A","B","B","C","C","D","D","E", "E", "A", "A", "C", "C", "B"), isolates = c("F","G") )
plot(grafo5)
grafo5

#matriz adjascente
grafo5[]

#obter nome dos v�rtices; V = v�rtices
V(grafo5)$name


grafo7 = graph(edges = c("Fernando", "Pedro", "Jos�", "Ant�nio", "Fernando", "Jos�", "Fernando", "Ant�nio"))
plot(grafo7)
#atributos adicionados aos v�rtices
V(grafo7)$Peso = c(40,30,30,25)
#ler atributos de um v�rtice
vertex_attr(grafo7)

#atributo adicionado as arestas
E(grafo7)$TipoAmizade = c("Amigo","Inimigo", "Inimigo", "Amigo")
#ler atributos da aresta
edge_attr(grafo7)
#ler apenas um atributo
vertex_attr(grafo7)$Peso

#type: DNW - Ponderado
E(grafo7)$weight = c(1,2,1,3)
grafo7
V(grafo7)$type = "Humanos"

#type: DNWB - Direcionado, Nominal, Ponderado e Tipo(Bipartido)
grafo7

# -> Impress�o
#quanto maior o peso maior a circunfer�ncia do vertice
vertex_attr(grafo7)$Peso
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso)

#quanto maior o peso maior a linha aresta fica mais intensa
edge_attr(grafo7)$weight
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight)

#mudando a cor do v�rtice
vertex_attr(grafo7)$Cor = c("Blue","Red", "Yellow", "Green")
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor)

#aresta curvada
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor, edge.curved=0.4)

#Moldura e t�tulo
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor, edge.curved=0.4, frame=T, main = "Grafo")

#V�rtices Quadrados
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor, edge.curved=0.4, frame=T, main = "Grafo", vertex.shape="square")

#grafos iterativos
tkplot(grafo7)
