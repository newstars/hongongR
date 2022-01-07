# descr 패키지 설치 및 로드하기(p.185)
install.packages("descr")
library(descr)


# 엑셀 파일 가져오기(p.185)
library(readxl)
exdata1 <- read_excel("C:/Rstudy/Sample1.xlsx")
exdata1


# 막대 그래프 그리기(p.186)
freq(exdata1$SEX, plot = T, main = '성별(barplot)')


# 빈도 분포를 구하고 막대 그래프 그리기(p.188)
dist_sex <- table(exdata1$SEX)
dist_sex
barplot(dist_sex)


# 막대 그래프 축 범위와 제목 지정하기(p.189)
barplot(dist_sex, ylim = c(0, 14), main = "BARPLOT", xlab = "SEX",
        ylab = "FREQUENCY",
        names = c("Female", "Male"))


# 막대 그래프 색상 변경하기(p.190)
barplot(dist_sex, ylim = c(0, 14), main = "BARPLOT", xlab = "SEX",
        ylab = "FREQUENCY", names = c("Female", "Male"),
        col = c("pink", "navy"))


# 상자 그림 그리기(p.192)
boxplot(exdata1$Y21_CNT, exdata1$Y20_CNT)


# 상자 그림 축 범위, 제목 지정하기(p.192)
boxplot(exdata1$Y21_CNT, exdata1$Y20_CNT, ylim = c(0, 60),
        main = "boxplot", names = c("21년건수", "20년건수"))


# 상자 그림 색상 변경하기(p.193)
boxplot(exdata1$Y21_CNT, exdata1$Y20_CNT, ylim = c(0, 60),
        main = "boxplot", names = c("21년건수", "20년건수"),
        col = c("green", "yellow"))


# 히스토그램 그리기(p.194)
hist(exdata1$AGE, xlim = c(0, 60), ylim = c(0, 7), main = "AGE분포")


# 파이차트 그리기(p.195)
data(mtcars)
x <- table(mtcars$gear)
pie(x)


# 줄기 잎 그림 그리기(p.197 ~ p.198)
x = c(1, 2, 3, 4, 7, 8, 8, 5, 9, 6, 9)
stem(x)

stem(x, scale = 2)

stem(x, scale = 0.5)


# 산점도 그리기(p.199)
data(iris)
plot(x = iris$Sepal.Length, y = iris$Petal.Width)


# 산점도 행렬 그리기(p.200)
data(iris)
pairs(iris)


# psych 패키지로 산점도 행렬 그리기
install.packages("psych")
library(psych)
data(iris)
pairs.panels(iris)

