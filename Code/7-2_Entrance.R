#2020년 국적별 입국 통계
# http://know.tour.go.kr/main/main.do
# 누적차트 그래프


install.packages("readxl")
library(readxl)

#엑셀파일 데이터 저장
entrance_xls <- read_xls("Project/국적별 입국_exam.xls")

#데이터 확인
head(entrance_xls)
str(entrance_xls)

#컬럼 제목 바꾸기
colnames(entrance_xls) <- c("country", "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC")

#공백 제거
entrance_xls$country <- gsub(" ", "", entrance_xls$country)
entrance_xls

#국가수 확인
entrance_xls |> nrow()

#1월기준 정렬 후 상위 10개 국가 추출
top5_country <-entrance_xls[order(-entrance_xls$JAN),] |> head(n=5)
top5_country

#데이터 변환하기
library(reshape2)

top5_melt <- melt(top5_country,  id.vars = 'country', variable.name = 'mon')
head(top5_melt)


#시각화하기
library(ggplot2)

ggplot(top5_melt, aes(x=mon, y=value, group=country)) +
  geom_line(aes(color=country))


#제목 설정 및 y축 범위 설정
ggplot(top5_melt, aes(x=mon, y=value, group=country)) +
  geom_line(aes(color=country)) +
  ggtitle("2020년 국적별 입국 수 변화 추이") +
  scale_y_continuous(breaks=seq(0, 500000, 50000))

#막대그래프 그리기
ggplot(top5_melt, aes(x=mon, y=value, fill=country)) +
  geom_bar(stat="identity",position="dodge")

#누적 막대그래프 그리기
ggplot(top5_melt, aes(x=mon, y=value, fill=country)) +
  geom_bar(stat="identity",position="stack")


