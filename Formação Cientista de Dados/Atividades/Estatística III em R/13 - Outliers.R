# -> Outliers

boxplot(iris$Sepal.Width)
boxplot(iris$Sepal.Width, outline = FALSE) #não considera outliers

boxplot.stats(iris$Sepal.Width)$out

install.packages('outliers')
library(outliers)
#superiores
outlier(iris$Sepal.Width)
#inferiores
outlier(iris$Sepal.Width, opposite = T)