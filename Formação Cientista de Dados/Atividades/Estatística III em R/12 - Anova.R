# -> Anova

tratamento = read.csv(file.choose(), sep = ";", header = T)
fix(tratamento)

#boxplot
boxplot(tratamento$Horas~tratamento$Remedio)

#teste de variância com 1 fator:
an = aov(Horas ~ Remedio, data=tratamento)
summary(an)

#teste de Tukey
an = aov(Horas ~ Remedio, data=tratamento)
tukey = TukeyHSD(an)
tukey

plot(tukey)

#teste de variância com 2 fatores:
an = aov(Horas ~ Remedio * Sexo, data=tratamento)
summary(an)

