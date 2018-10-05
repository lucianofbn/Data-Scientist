# -> Regras de Associação - apriori - arules
install.packages("arules", dependencies = T)
library(arules)

transacoes = read.transactions(file.choose(), format = "basket", sep=",")
transacoes

inspect(transacoes)

image(transacoes)

regras = apriori(transacoes, parameter = list(supp=0.5, conf=0.5))
regras
inspect(regras)

install.packages("arulesViz")
library(arulesViz)
plot(regras)
plot(regras, method = "graph", control = list(type = "items"))