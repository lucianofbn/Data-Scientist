# -> Nuvem de Palavras

library(tm)

#retorna lista de palavras sem valor semântico
stopwords("portuguese")

#Corpus Volátil
corpus = VCorpus(DirSource("C:/Arquivos", encoding="UTF-8"), readerControl = list(reader=readPlain, language="eng"))

#remove as stopwords
corpus = tm_map(corpus, removeWords, stopwords("english"))

#remover espaços em branco excedentes
corpus = tm_map(corpus, stripWhitespace)

#remover pontuação
corpus = tm_map(corpus, removePunctuation)

#remover números
corpus = tm_map(corpus, removeNumbers)

# -> Nuvem de Palavra (wordcloud)
install.packages("wordcloud")
library(wordcloud)

#gerar nuvem de palavras passando o corpus como parâmetro
#palavras maiores tem uma frequência maior
wordcloud(corpus, max.words = 100, random.order = T, colors = rainbow(8), rot.per = 0.5, use.r.layout = T)

# -> Matriz de Termos Frequentes
freq = TermDocumentMatrix(corpus)
matriz = as.matrix(freq)
matriz = sort(rowSums(matriz), decreasing = T)
matriz = data.frame(word=names(matriz), freq=matriz)
head(matriz, n=100)