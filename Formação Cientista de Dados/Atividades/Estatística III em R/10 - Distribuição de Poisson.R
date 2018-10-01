# -> Distribuição de Poisson
#1 Em uma determinada cidade, ocorrem em média 2 acidentes por dia. Qual a probabilidade de um dia ocorrerem 3 acidentes?
dpois(3, lambda = 2)

#2 Qual a probabilidade de ocorrerem 3 "ou menos"? (x <= 3)
ppois(3, lambda=2)

#3 Qual a probablidade que ocorram mais que 3? (x>3)
ppois(3, lambda = 2, lower.tail = F)