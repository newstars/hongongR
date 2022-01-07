carName <- c("Porsche 911", "the new GRANDEUR", "All New Carnival")

# 3
test <- gsub(" ", "", carName)
test


# 4
library(ggplot2)
ggplot(diamonds, aes(x = carat, y = price, color = clarity)) +
  geom_point() + ggtitle("다이아몬드 가격") +
  scale_y_continuous(breaks = seq(0, 20000, 1000))