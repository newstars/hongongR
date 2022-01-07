# reshape2 패키지 설치하기(p.248)
install.packages("reshape2")


# airquality 데이터 세트 확인하기(p.249)
head(airquality)


# 변수명 소문자로 통일하기(p.249)
names(airquality) <- tolower(names(airquality))
head(airquality)


# 열을 행으로 바꾸기(p.250)
library(reshape2)
melt_test <- melt(airquality)
head(melt_test)

tail(melt_test)


# 기준을 정해 열을 행으로 바꾸기(p.251) 
melt_test2 <- melt(airquality, id.vars = c("month", "wind"),
                   measure.vars = "ozone")
head(melt_test2)


# 변수명 소문자로 통일하기(p.253)
names(airquality) <- tolower(names(airquality))
head(airquality)


# 열을 행으로 바꾸기(p.254)
library(reshape2)
aq_melt <- melt(airquality, id.vars = c("month", "day"), na.rm = TRUE)
head(aq_melt)


# 행을 열로 바꾸기(p.254 ~ p.256)
aq_dcast <- dcast(aq_melt, month + day ~ variable)
head(aq_dcast)

View(airquality)
View(aq_melt)
View(aq_dcast)


# 행을 변수로 바꾸기(p.257)
acast(aq_melt, day ~ month ~ variable)


# cast() 함수로 평균 요약 확인하기(p.258)
acast(aq_melt, month ~ variable, mean)


# cast() 함수로 합계 요약 확인하기(p.258)
dcast(aq_melt, month ~ variable, sum)




