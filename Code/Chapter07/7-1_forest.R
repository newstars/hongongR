
## forest_example_data 불러오기

install.packages('readxl')
library(readxl) 

forest_example_data <- read_excel("C:/Rstudy/forest_example_data1.xls")                                                                           
forest_example_data

colnames(forest_example_data) <- c("name","city","gubun","area","number","stay","city_new","date","code","codename")

str(forest_example_data)
head(forest_example_data)



## 시도명(city) 컬럼을 활용하여, 시도별 분포 확인하기

# 1) Freq 함수 활용하기
install.packages("descr") 
library(descr)
freq(forest_example_data$city, plot=T, main =  'City')

# 2) table 함수 활용하기
city_table <- table(forest_example_data$city)
city_table
barplot(city_table)

# 3) dplyr 활용하기
install.packages("dplyr")
library(dplyr)
count(forest_example_data, city) %>% arrange(desc(n))


## 소재지_시도명(city_new) 컬럼을 활용하여, 시도별 분포 확인하기
count(forest_example_data, city_new) %>% arrange(desc(n))

## 제공기관명(codename) 컬럼을 활용하여, 시도별 분포 확인하기
count(forest_example_data, codename) %>% arrange(desc(n))

## 시도명(city) 중 경기도, 충청북도, 경상북도 지역의 데이터만 추출하기
area_anal <- forest_example_data %>% filter (city %in% c("경기도","충청북도","경상북도"))
area_anal