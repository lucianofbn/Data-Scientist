# -> Qui Quadrado

novela = matrix(c(19,6,43,32), nrow = 2, byrow = T)
rownames(novela) = c("Masculino", "Feminino")
colnames(novela) = c("Assiste", "N�o Assiste")
fix(novela)

#verificar o alpha(diferen�a significativa): Se for maior n�o rejeita a hip�tese
chisq.test(novela)