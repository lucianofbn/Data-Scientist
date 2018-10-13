# -> Mineração de Dados - Corpus Volátil
library(tm)

#Fontes de dados disponíveis
getSources()

#Qual formato do texto que você pode ler
getReaders()

#Corpus Volátil
corpus = VCorpus(DirSource("C:/Arquivos", encoding="UTF-8"), readerControl = list(reader=readPlain, language="eng"))
#resumo dos documentos indexados
inspect(corpus)
#inspecionar corpus de 1 a 100
inspect(corpus[1:100])
#ler o metadados pelo índice
meta(corpus[[1]])
inspect(corpus[[2]])
#transformar em texto separado por linhas
as.character(corpus[[2]])
#apenas a primeira linha
as.character(corpus[[2]])[1]