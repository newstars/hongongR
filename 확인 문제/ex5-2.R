library(readxl)

# 2번 exdata1 데이터
exdata1 <- read_excel("C:/Rstudy/Sample1.xlsx")
exdata1

# 4번 jeju_y21_history, jeju_y20_history 데이터
jeju_y21_history <- read_excel("C:/Rstudy/Sample4_y21_history.xlsx")
jeju_y20_history <- read_excel("C:/Rstudy/Sample5_y20_history.xlsx")



library(dplyr)

# 2
exdata2 <- exdata1 %>% filter(AGE <= 30 & Y20_CNT >= 10)
exdata2


# 3
exdata2 %>% arrange(desc(AGE), (Y20_CNT))


# 4
bind_col <- left_join(jeju_y21_history, jeju_y20_history, by = "ID")
bind_col