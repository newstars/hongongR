# 2번 forest_example_data 데이터
library(readxl)
forest_example_data <- read_excel("C:/Rstudy/forest_example_data.xls")
colnames(forest_example_data) <- c("name","city","gubun","area",
                                   "number","stay","city_new",
                                   "code","codename")

# 2
library(descr)
freq(forest_example_data$gubun, plot = T, main = '휴양림')


# 3
library(dplyr)
count(forest_example_data, gubun) %>% arrange(n)