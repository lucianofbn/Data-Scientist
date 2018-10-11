# -> Grafos Direcionados e Não direcionados - Igraph

library(igraph)

#-> DIRECIONADOS
#edges = conjunto de arestas
grafo1 = graph(edges = c(1,2,2,3,3,4,4,1))
plot(grafo1)

#grafo circular
grafo2 = graph(edges = c(1,2,2,3,3,4,4,1,1,4,4,3,3,2,2,1))
plot(grafo2)

#grafo com auto-relacionamento
grafo3 = graph(edges = c(1,2,2,3,3,4,4,1,1,1))
plot(grafo3)

#grafo literal
grafo4 = graph_from_literal(1-+2,2-+3,3++4,4-+1)
plot(grafo4)

#-> NÃO DIRECIONADOS
#literal não direcionado
grafo5 = graph_from_literal(1-2,2-3,3-4,4-1)
plot(grafo5)

#literal não direcionado com elemento isolado
grafo6 = graph_from_literal(1-2,2-3,3-4,4-1,5)
plot(grafo6)