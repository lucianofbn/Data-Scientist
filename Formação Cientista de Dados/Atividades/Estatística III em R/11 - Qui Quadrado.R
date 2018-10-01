# -> Qui Quadrado

novela = matrix(c(19,6,43,32), nrow = 2, byrow = T)
rownames(novela) = c("Masculino", "Feminino")
colnames(novela) = c("Assiste", "Não Assiste")
fix(novela)

#verificar o alpha(diferença significativa): Se for maior não rejeita a hipótese
chisq.test(novela)