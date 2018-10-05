# -> Regras de Associaçào - Eclad - transacoes2

library(arules)
transacoes = read.transactions(file.choose(), format="basket", sep = ",")
image(transacoes)
regras = eclat(transacoes, parameter = list(supp=0.1,maxlen=15))
inspect(regras)

library(arulesViz)
plot(regras, method="graph", control=list(type="items"))