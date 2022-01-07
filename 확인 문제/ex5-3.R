library(reshape2)

# 2
names(iris) <- tolower(names(iris))
head(iris)


# 3
iris_test <- melt(iris, id.vars = "species", measure.vars = "sepal.length")
iris_test


# 4
library(readxl)
middle_mid_exam <- read_excel("C:/Rstudy/middle_mid_exam.xlsx")
View(middle_mid_exam)

library(dplyr)
library(reshape2)

MATHEMATICS <- middle_mid_exam %>% select(CLASS, ID, MATHEMATICS)
MATHEMATICS <- dcast(MATHEMATICS, ID ~ CLASS)
View(MATHEMATICS)

ENGLISH <- middle_mid_exam %>% select(CLASS, ID, ENGLISH)
ENGLISH <- dcast(ENGLISH, ID ~ CLASS)
View(ENGLISH)