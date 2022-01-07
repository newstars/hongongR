# 1
test <- mtcars[,c("mpg","hp","wt")]
test


# 2
library(ggmap)
ggmap_key <- "사용자 API를 입력하세요."
register_google(ggmap_key)

niagara_map <- get_googlemap('niagara falls', maptype = 'roadmap', zoom = 11)
niagara_map_data <- geocode('niagara falls')

ggmap(niagara_map) +
  geom_point(data = niagara_map_data, aes(x = lon, y = lat), size = 3)


# 3
niagara_map_data_marker <- data.frame(niagara_map_data$lon, niagara_map_data$lat)
niagara_map <- get_googlemap('niagara falls', maptype = 'roadmap', zoom = 11,
                             markers = niagara_map_data_marker)

ggmap(niagara_map)