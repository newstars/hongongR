library(readxl)    # readxl 패키지 로드

# day.xlsx 파일을 불러온 후 dustdata에 데이터 저장
dustdata <- read_excel("D:/Rstudy/Project/dustdata.xlsx")

View(dustdata) # 데이터 확인
str(dustdata)  # 데이터 속성 확인


library(dplyr) # dplyr 패키지 로드

# 성북구와 중구 데이터만 추출 및 확인
dustdata_anal <- dustdata[, c("날짜", "성북구", "중구")]
View(dustdata_anal)


# dustdata_anal의 결측치 확인
is.na(dustdata_anal)

# 결측치 총 수량 확인
sum(is.na(dustdata_anal))

# psych 패키지 설치 및 로드
install.packages("psych")
library(psych)

# 성북구의 미세먼지량에 대한 기초 통계량 도출
describe(dustdata_anal$성북구)

# 중구의 미세먼지량에 대한 기초 통계량 도출
describe(dustdata_anal$중구)


# 성북구와 중구의 미세먼지 농도에 대해 boxplot을 통한 분포 차이 확인
boxplot(dustdata_anal$성북구, dustdata_anal$중구,
        main = "finedust_compare", xlab = "AREA", names = c("성북구", "중구"),
        ylab = "FINEDUST_PM", col = c("blue", "green"))


# 지역 별 미세먼지의 농도평균에 대한 차이를 검증
# 등분산 검정
var.test(dustdata_anal$중구, dustdata_anal$성북구)


# T 검정
t.test(dustdata_anal$중구, dustdata_anal$성북구, var.equal = T)
