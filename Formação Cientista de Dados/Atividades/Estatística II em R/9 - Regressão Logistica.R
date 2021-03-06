# -> Regress�o Logistica
# Verificar se um candidato vai ser eleito ou n�o mediante ao seu investimento de campanha.
 
#import csv:
eleicao = read.csv(file.choose(), sep = ";", header = T)

#Visualiza��es:
fix(eleicao)
head(eleicao)

#plotagem:
plot(eleicao$DESPESAS, eleicao$SITUACAO)
summary(eleicao)

#correla��o
cor(eleicao$DESPESAS, eleicao$SITUACAO)

#modelo de regress�o log�stica:
modelo = glm(SITUACAO ~ DESPESAS, data = eleicao, family = "binomial")
summary(modelo)

#plotagem mudando alguns aspectos:
plot(eleicao$DESPESAS, eleicao$SITUACAO, col='red', pch=20)

#gerar pontos de ajustes do modelo:
points(eleicao$DESPESAS, modelo$fitted, pch = 4)

# -> Preverelei��o com o arquivo novos candidatos:
prevereleicao = read.csv(file.choose(), sep = ";", header = T)
#visualizar
fix(prevereleicao)
#criar nova coluna para o resultado:
prevereleicao$RESULT = predict(modelo, newdata = prevereleicao, type = "response")
prevereleicao$RESULT
fix(prevereleicao)
