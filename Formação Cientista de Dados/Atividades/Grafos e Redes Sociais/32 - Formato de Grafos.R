#-> Formatos e Impressão de grafos - Entendendo o Igraph

#type: D
grafo2 = graph(edges = c(1,2,3,3,3,4,4,1))
plot(grafo2)
grafo2

#type: U (n direcionado)
grafo3 = graph(edges = c(1,2,3,3,3,4,4,1), directed = F)
plot(grafo3)
grafo3

#type: n = numero de vértices (criou 4 + 6 vértices isolados)
grafo4 = graph(edges = c(1,2,3,3,3,4,4,1), directed = F, n = 10)
plot(grafo4)
grafo4

#isolates = você determina os vértices que ficarão isolados
grafo5 = graph(edges = c("A","B","B","C","C","D","D","E", "E", "A", "A", "C", "C", "B"), isolates = c("F","G") )
plot(grafo5)
grafo5

#matriz adjascente
grafo5[]

#obter nome dos vértices; V = vértices
V(grafo5)$name


grafo7 = graph(edges = c("Fernando", "Pedro", "José", "Antônio", "Fernando", "José", "Fernando", "Antônio"))
plot(grafo7)
#atributos adicionados aos vértices
V(grafo7)$Peso = c(40,30,30,25)
#ler atributos de um vértice
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

# -> Impressão
#quanto maior o peso maior a circunferência do vertice
vertex_attr(grafo7)$Peso
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso)

#quanto maior o peso maior a linha aresta fica mais intensa
edge_attr(grafo7)$weight
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight)

#mudando a cor do vértice
vertex_attr(grafo7)$Cor = c("Blue","Red", "Yellow", "Green")
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor)

#aresta curvada
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor, edge.curved=0.4)

#Moldura e título
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor, edge.curved=0.4, frame=T, main = "Grafo")

#Vértices Quadrados
plot(grafo7, vertex.size=vertex_attr(grafo7)$Peso, edge.width=edge_attr(grafo7)$weight, vertex.color=vertex_attr(grafo7)$Cor, edge.curved=0.4, frame=T, main = "Grafo", vertex.shape="square")

#grafos iterativos
tkplot(grafo7)
