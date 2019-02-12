iris
str(iris)
nrow(iris)
# 열이 몇개인지 ?
ncol(iris)
# 행이 몇개인지?
head(iris)
tail(iris)
summary(iris)
View(iris)
subset(iris, Sepal.Length > 7.2 & Petal.Length <= 6.5, c("Sepal.Length", "Species"))

library(ggplot2)
midwest
View(midwest)

str(midwest)
midwest <- as.data.frame(midwest)
midwest$perasian <- midwest$popasian / midwest$poptotal * 100
midwest$perasian

hist(midwest$perasian)
test <- mean(midwest$perasian)

midwest$group <- ifelse(test < midwest$perasian, "large", "small")
midwest$group
table(midwest$group)
qplot(midwest$group)
