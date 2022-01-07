library(dplyr)

library(readxl)
exdata1 <- read_excel("C:/Rstudy/Sample1.xlsx")
exdata1


# 선택한 변수 추출하기(p.226)
exdata1 %>% select(ID)


# 선택한 변수 여러 개 추출하기(p.226)
exdata1 %>% select(ID, AREA, Y21_CNT)


# 선택한 변수 제외하고 추출하기(p.227)
exdata1 %>% select(-AREA)

exdata1 %>% select(-AREA, - Y21_CNT)


# 조건에 만족하는 데이터만 추출하기(p.229)
exdata1 %>% filter(AREA == '서울')

exdata1 %>% filter(AREA == '서울' & Y21_CNT >= 10)


# 오름차순 정렬하기(p.230)
exdata1 %>% arrange(AGE)


# 내림차순 정렬하기(p.231)
exdata1 %>% arrange(desc(Y21_AMT))


# 중첩 정렬하기(p.232)
exdata1 %>% arrange(AGE, desc(Y21_AMT))


# 변수 값 합산하기(p.233)
exdata1 %>% summarise(TOT_Y21_AMT = sum(Y21_AMT))


# 변수 값을 그룹별로 합산하기(p.233)
exdata1 %>% group_by(AREA) %>% summarise(SUM_Y21_AMT = sum(Y21_AMT))


# 엑셀 파일 불러오기(p.235)
library(readxl)
m_history <- read_excel("C:/Rstudy/Sample2_m_history.xlsx")
f_history <- read_excel("C:/Rstudy/Sample3_f_history.xlsx")
View(m_history)
View(f_history)


# 테이블을 세로로 결합하기(p.236)
exdata_bindjoin <- bind_rows(m_history, f_history)
View(exdata_bindjoin)


# 엑셀 파일 불러오기(p.237)
library(readxl)
jeju_y21_history <- read_excel("C:/Rstudy/Sample4_y21_history.xlsx")
jeju_y20_history <- read_excel("C:/Rstudy/Sample5_y20_history.xlsx")
View(jeju_y21_history)
View(jeju_y20_history)


# 첫 번째 테이블 기준으로 가로 결합하기(p.239)
bind_col <- left_join(jeju_y21_history, jeju_y20_history, by = "ID")
View(bind_col)


# 키 변수가 동일할 때만 가로 결합하기(p.240)
bind_col_inner <- inner_join(jeju_y21_history, jeju_y20_history, by = "ID")
View(bind_col_inner)


# 키 변수를 기준으로 모두 가로 결합하기(p.241)
bind_col_full <- full_join(jeju_y21_history, jeju_y20_history, by = "ID")
View(bind_col_full)







