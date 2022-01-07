# dustData 데이터
library(readxl)
dustdata <- read_excel("C:/Rstudy/dustdata.xlsx")


# 1
dustData_Test <- dustdata[, c("날짜", "마포구", "송파구")]
dustData_Test


# 2
boxplot(dustData_Test$마포구, dustData_Test$송파구, main = "finedust_compare",
        xlab = "AREA", names = c("마포구", "송파구"), ylab = "FINEDUST_PM",
        col = c("blue", "green"))