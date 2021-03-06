# -> Nuvem de Palavras

library(tm)

#retorna lista de palavras sem valor sem�ntico
stopwords("portuguese")

#Corpus Vol�til
corpus = VCorpus(DirSource("C:/Arquivos", encoding="UTF-8"), readerControl = list(reader=readPlain, language="eng"))

#remove as stopwords
corpus = tm_map(corpus, removeWords, stopwords("english"))

#remover espa�os em branco excedentes
corpus = tm_map(corpus, stripWhitespace)

#remover pontua��o
corpus = tm_map(corpus, removePunctuation)

#remover n�meros
corpus = tm_map(corpus, removeNumbers)

# -> Nuvem de Palavra (wordcloud)
install.packages("wordcloud")
library(wordcloud)

#gerar nuvem de palavras passando o corpus como par�metro
#palavras maiores tem uma frequ�ncia maior
wordcloud(corpus, max.words = 100, random.order = T, colors = rainbow(8), rot.per = 0.5, use.r.layout = T)

# -> Matriz de Termos Frequentes
freq = TermDocumentMatrix(corpus)
matriz = as.matrix(freq)
matriz = sort(rowSums(matriz), decreasing = T)
matriz = data.frame(word=names(matriz), freq=matriz)
head(matriz, n=100)