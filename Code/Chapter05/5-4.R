# 결측치 확인하기(p.263)
x <- c(1, 2, NA, 4, 5)
x
sum(x)
is.na(x)
table(is.na(x))


# 결측치 제외하고 연산하기(p.264)
x <- c(1, 2, NA, 4, 5)
x
sum(x)
is.na(x)
sum(x, na.rm = T)


# airquality 데이터 세트 결측치 확인하기(p.265)
data(airquality)
is.na(airquality)


# 데이터 세트에 있는 결측치 전체 개수 확인하기(p.266)
sum(is.na(airquality))


# 컬럼별 결측치 개수 확인하기(p.266)
colSums(is.na(airquality))


# 결측치가 있는 행 제거하기(p.266)
data(airquality)
na.omit(airquality)


# 결측치 0으로 대체하기(p.267)
data(airquality)
airquality[is.na(airquality)] <- 0
colSums(is.na(airquality))


# 이상치 확인하기(p.268)
data(mtcars)
boxplot(mtcars$wt)


# 상자 그림의 기술통계량 확인하기(p.269)
boxplot(mtcars$wt)$stats


# 이상치 확인하기(p.270 ~ p.271)
mtcars$wt > 5.25

mtcars$wt <- ifelse(mtcars$wt > 5.25, NA, mtcars$wt)
mtcars$wt

