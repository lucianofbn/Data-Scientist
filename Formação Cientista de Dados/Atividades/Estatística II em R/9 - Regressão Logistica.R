# -> Regressão Logistica
# Verificar se um candidato vai ser eleito ou não mediante ao seu investimento de campanha.
 
#import csv:
eleicao = read.csv(file.choose(), sep = ";", header = T)

#Visualizações:
fix(eleicao)
head(eleicao)

#plotagem:
plot(eleicao$DESPESAS, eleicao$SITUACAO)
summary(eleicao)

#correlação
cor(eleicao$DESPESAS, eleicao$SITUACAO)

#modelo de regressão logística:
modelo = glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")
summary(modelo)

#plotagem mudando alguns aspectos:
plot(eleicao$DESPESAS, eleicao$SITUACAO, col='red', pch=20)

#gerar pontos de ajustes do modelo:
points(eleicao$DESPESAS, modelo$fitted, pch = 4)

# -> Prevereleição com o arquivo novos candidatos:
prevereleicao = read.csv(file.choose(), sep = ";", header = T)
#visualizar
fix(prevereleicao)
#criar nova coluna para o resultado:
prevereleicao$RESULT = predict(modelo, newdata = prevereleicao, type = "response")
prevereleicao$RESULT
fix(prevereleicao)
