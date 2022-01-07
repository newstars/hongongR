# 3번은 단순 빈칸 채우기 문제이므로 예제 파일을 제공하지 않습니다.

# 4
library(ggmap)
register_google (key = "사용자 API 키")

gg_busan <- get_googlemap ("busan", maptype = "roadmap ")
ggmap(gg_busan)