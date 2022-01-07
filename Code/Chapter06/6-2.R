# ggplot2 패키지 로드 및 economics 데이터 세트 구조 확인하기(p.293)
library(ggplot2)
str(economics)


# 그래프에 사선 그리기(p.294)
ggplot(economics, aes(x = date, y = psavert)) +
  geom_line() +
  geom_abline(intercept = 12.18671, slope = -0.0005444)


# 그래프에 평행선 그리기(p.295)
ggplot(economics, aes(x = date, y = psavert)) +
  geom_line() +
  geom_hline(yintercept = mean(economics$psavert))


# 그래프에 수직선 그리기(p.296)
library(dplyr)
x_inter <- filter(economics, psavert ==
                    min(economics$psavert))$date
ggplot(economics, aes(x = date, y = psavert)) +
  geom_line() +
  geom_vline(xintercept = x_inter)


# 그래프에 텍스트 입력하기(p.297)
ggplot(airquality, aes(x = Day, y = Temp)) +
  geom_point() +
  geom_text(aes(label = Temp, vjust = 0, hjust = 0))


# 그래프에 사각형 그리기(p.298)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  annotate("rect", xmin = 3, xmax = 4, ymin = 12, ymax = 21,
           alpha = 0.5, fill = "skyblue")


# 그래프에 화살표 그리기(p.299)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  annotate("rect", xmin = 3, xmax = 4, ymin = 12, ymax = 21,
           alpha = 0.5, fill = "skyblue") +
  annotate("segment", x = 2.5, xend = 3.7, y = 10, yend = 17,
           color = "red", arrow = arrow())


# 그래프에 도형과 텍스트를 함께 표시하기(p.300)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  annotate("rect", xmin = 3, xmax = 4, ymin = 12, ymax = 21,
           alpha = 0.5, fill = "skyblue") +
  annotate("segment", x = 2.5, xend = 3.7, y = 10, yend = 17,
           color = "red", arrow = arrow()) +
  annotate("text", x = 2.5, y = 10, label = "point")


# 그래프와 축 제목 추가하기(p.301)
ggplot(mtcars, aes(x = gear)) + geom_bar() +
  labs(x = "기어수", y = "자동차수", title = "변속기 기어별 자동차수")


# 엑셀 파일 가져오기(p.303)
library(readxl)
exdata1 <- read_excel("C:/Rstudy/Sample1.xlsx")
exdata1


# 상관분석하여 두 변수 간의 상관관계 확인하기(p.304)
cor.test(exdata1$Y20_CNT, exdata1$Y21_CNT)


# 회귀분석하여 절편과 기울기 구하기(p.305)
reg_result <- lm(Y20_CNT ~ Y21_CNT, data = exdata1)
reg_result

