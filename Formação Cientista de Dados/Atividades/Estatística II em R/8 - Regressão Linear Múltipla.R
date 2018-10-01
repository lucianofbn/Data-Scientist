# Regressão Linear Múltipla
colnames(mtcars)
dim(mtcars)

cor(mtcars[1:4])
modelo = lm(mpg ~ disp, data = mtcars)
modelo

#Verificar o coeficiente de determinação(R²; sempre positivo, quanto mais próximo de 1 melhor):
summary(modelo)$r.squared
#R² ajustado (evita erros ao adicionar novas variáveis):
summary(modelo)$adj.r.squared
#plot
plot(mpg ~ disp, data=mtcars)
abline(modelo)
#predição
predict(modelo, data.frame(disp=200))


# Múltipla-> Adicionar novas váriaveis exploratórias hp(cavalos) cyl(numero de cilindros)
modelo = lm(mpg ~ disp + hp + cyl, data=mtcars)
#Verifique que o coeficiente de determinação, R², nesse caso se n ajustado pode causar erro.
#cd:
summary(modelo)$r.squared
#cdajustado(mais importante nesse caso):
summary(modelo)$adj.r.squared  
#predict adicionando as novas variaveis:
predict(modelo, data.frame(disp=200, hp=100, cyl=4))