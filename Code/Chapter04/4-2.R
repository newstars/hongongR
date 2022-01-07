# 내장 데이터 세트 가져오기(p.167)
data("iris")


# 데이터 세트 확인하기(p.168)
iris


# 데이터 구조 확인하기(p.169)
str(iris)


# 데이터 세트 컬럼 및 관측치 확인하기(p.170)
ncol(iris)
nrow(iris)
dim(iris)


# 데이터 세트 컬럼명 확인하기(p.171)
ls(iris)


# 데이터 앞부분 값 확인하기(p.172)
head(iris)


# 데이터 뒷부분 값 확인하기(p.172)
tail(iris, n = 3)


# 평균, 중앙값 구하기(p.173)
mean(iris$Sepal.Length)
median(iris$Sepal.Length)


# 최솟값, 최댓값, 범위 구하기(p.174)
min(iris$Sepal.Length)
max(iris$Sepal.Length)
range(iris$Sepal.Length)


# 사분위수 구하기(p.176)
quantile(iris$Sepal.Length)

quantile(iris$Sepal.Length, probs = 0.25)

quantile(iris$Sepal.Length, probs = 0.50)

quantile(iris$Sepal.Length, probs = 0.75)

quantile(iris$Sepal.Length, probs = 0.80)


# 분산과 표준편차 구하기(p.178)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)


# psych 패키지 설치 및 로드하기(p.179)
install.packages("psych")
library(psych)


# 첨도와 왜도 구하기(p.179)
kurtosi(iris$Sepal.Length)
skew(iris$Sepal.Length)


# descr 패키지 설치 및 로드하기(p.180)
install.packages("descr")
library(descr)


# 빈도분석하기(p.180)
freq_test <- freq(iris$Sepal.Length, plot = F)
freq_test


