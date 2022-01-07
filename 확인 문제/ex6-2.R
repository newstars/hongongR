# 1
cor.test(iris$Sepal.Length, iris$Petal.Length)


# 2
iris_result <- lm(Petal.Length ~ Sepal.Length, data = iris)
iris_result


# 3
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length )) +
  geom_line() +
  geom_abline(intercept = -7.101, slope = 1.858)