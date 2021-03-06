# -> Minera��o de Dados - Corpus Vol�til
library(tm)

#Fontes de dados dispon�veis
getSources()

#Qual formato do texto que voc� pode ler
getReaders()

#Corpus Vol�til
corpus = VCorpus(DirSource("C:/Arquivos", encoding="UTF-8"), readerControl = list(reader=readPlain, language="eng"))
#resumo dos documentos indexados
inspect(corpus)
#inspecionar corpus de 1 a 100
inspect(corpus[1:100])
#ler o metadados pelo �ndice
meta(corpus[[1]])
inspect(corpus[[2]])
#transformar em texto separado por linhas
as.character(corpus[[2]])
#apenas a primeira linha
as.character(corpus[[2]])[1]