# Regress�o Linear M�ltipla
colnames(mtcars)
dim(mtcars)

cor(mtcars[1:4])
modelo = lm(mpg ~ disp, data = mtcars)
modelo

#Verificar o coeficiente de determina��o(R�; sempre positivo, quanto mais pr�ximo de 1 melhor):
summary(modelo)$r.squared
#R� ajustado (evita erros ao adicionar novas vari�veis):
summary(modelo)$adj.r.squared
#plot
plot(mpg ~ disp, data=mtcars)
abline(modelo)
#predi��o
predict(modelo, data.frame(disp=200))


# M�ltipla-> Adicionar novas v�riaveis explorat�rias hp(cavalos) cyl(numero de cilindros)
modelo = lm(mpg ~ disp + hp + cyl, data=mtcars)
#Verifique que o coeficiente de determina��o, R�, nesse caso se n ajustado pode causar erro.
#cd:
summary(modelo)$r.squared
#cdajustado(mais importante nesse caso):
summary(modelo)$adj.r.squared  
#predict adicionando as novas variaveis:
predict(modelo, data.frame(disp=200, hp=100, cyl=4))