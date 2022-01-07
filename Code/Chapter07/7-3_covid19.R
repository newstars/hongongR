#선별진료소 위치
#주소 파싱

install.packages("readxl")
library(readxl)

#엑셀파일 데이터 저장
xlsdata <- read_xls("Project/선별진료소.xls")
View(xlsdata)

#필요한 칼럼만 추출 (시도, 시군구, 의료기관명, 주소)
data_raw <- xlsdata[,c(2:5)]
head(data_raw)

#열이름 변경
names(data_raw)
names(data_raw) <- c("state","city","name","addr")

str(data_raw)

#데이터 도수 분포 확인 및 시각화
table(data_raw$state)
barplot(table(data_raw$state))

library(dplyr)
data_raw %>% count(city)

data_raw$city |> length()


#대전시 데이터만 추출
daejeon_data <- data_raw[data_raw$state=="대전",]
head(daejeon_data)

#대전시 선별진료수 수량 확인
nrow(daejeon_data)

install.packages("ggmap")
library(ggmap)

#구글 맵 사용 인증
ggmap_key <- "사용자키 입력"
register_google(ggmap_key)


daejeon_data$addr <- enc2utf8(daejeon_data$addr)

daejeon_data$addr

#daejoen_data 에 좌표 추가 저장
#mutate_geocode(데이터 프레임, 주소가 적힌 열의 이름, source = ‘google’)
daejeon_data <- mutate_geocode(data = daejeon_data, location = addr, source = 'google')

head(daejeon_data$lon)


#지도 그리기
daejeon_map = get_googlemap('대전', maptype = 'roadmap', zoom = 11)

ggmap(daejeon_map)
ggmap(daejeon_map) + geom_point(data = daejeon_data,  aes(x = lon, y = lat, color = factor(name)), size = 3)



#marker 사용
daejeon_data_marker <- data.frame(daejeon_data$lon, daejeon_data$lat)
daejeon_map = get_googlemap('대전', maptype = 'roadmap', zoom = 11, markers=daejeon_data_marker)
ggmap(daejeon_map) + geom_text(data = daejeon_data,  aes(x = lon, y = lat), size = 3, label=daejeon_data$name)
