# ggmap 패키지 설치 및 로드하기(p.316)
install.packages("ggmap")
library(ggmap)


# 구글 지도에서 서울시 지도 가져오기(p.316)
register_google(key = "사용자 API 키를 입력하세요.")

gg_seoul <- get_googlemap("seoul", maptype = "roadmap")
ggmap(gg_seoul)


# 지도에 대전역 좌표를 점으로 표시하기(p.317 ~ p.318)
library(dplyr)
library(ggplot2)

geo_code <- enc2utf8("대전역") %>% geocode()
geo_data <- as.numeric(geo_code)


get_googlemap(center = geo_data, maptype = "roadmap",
              zoom = 13) %>% ggmap() +
  geom_point(data = geo_code, aes(x = geo_code$lon, y = geo_code$lat))
