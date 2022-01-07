library(ggplot2)

# 2
data("diamonds")
ggplot (diamonds, aes(x = cut) ) + 
  geom_bar (width = 0.5)


# 3
ggplot(diamonds, aes(x = carat, y = price) ) +
  geom_line()
