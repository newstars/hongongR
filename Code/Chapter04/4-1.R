# 직접 데이터 입력하기(p.147)
ID <- c(1, 2, 3, 4, 5)
ID
SEX <- c("F", "M", "F", "M", "F")
SEX
DATA <- data.frame(ID = ID, SEX = SEX)
View(DATA)


# TXT 파일 가져오기(p.150)
ex_data <- read.table("C:/Rstudy/data_ex.txt", encoding = "EUC-KR",
                      fileEncoding = "UTF-8")
View(ex_data)


# 변수명 지정하기(p.151)
ex_data1 <- read.table("C:/Rstudy/data_ex.txt", encoding = "EUC-KR",
                       fileEncoding = "UTF-8", header = TRUE)
View(ex_data1)


# 변수명으로 사용할 행이 없을 때(p.152)
varname <- c("ID", "SEX", "AGE", "AREA")
ex1_data <- read.table("C:/Rstudy/data_ex_col.txt", encoding = "EUC-KR",
                       fileEncoding = "UTF-8", col.names = varname)
View(ex1_data)


# 행 스킵하여 가져오기(p.153)
ex_data2 <- read.table("C:/Rstudy/data_ex.txt", encoding = "EUC-KR",
                       fileEncoding = "UTF-8",
                       header = TRUE, skip = 2)
View(ex_data2)


# 행 개수 지정하여 가져오기(p.154)
ex_data3 <- read.table("C:/Rstudy/data_ex.txt", encoding = "EUC-KR",
                       fileEncoding = "UTF-8",
                       header = TRUE, nrows = 7)
View(ex_data3)


# 데이터 구분자 지정하여 가져오기(p.155)
ex_data4 <- read.table("C:/Rstudy/data_ex1.txt", encoding = "EUC-KR",
                       fileEncoding = "UTF-8",
                       header = TRUE, sep = ",")
View(ex_data4)


# CSV 파일 가져오기(p.156)
ex_data <- read.csv("C:/Rstudy/data_ex.csv")
View(ex_data)


# readxl 패키지 설치 및 로드하기(p.157)
install.packages('readxl')
library(readxl)


# 엑셀 파일 가져오기(p.157)
excel_data_ex <- read_excel("C:/Rstudy/data_ex.xlsx")
View(excel_data_ex)


# XML 패키지 설치 및 로드하기(p.160)
install.packages("XML")
library(XML)


# XML 파일 가져오기(p.161)
xml_data <- xmlToDataFrame("C:/Rstudy/data_ex.xml")
View(xml_data)


# jsonlite 패키지 설치 및 로드하기(p.162)
install.packages("jsonlite")
library(jsonlite)


# JSON 파일 가져오기(p.162)
json_data <- fromJSON("C:/Rstudy/data_ex.json")
str(json_data)

