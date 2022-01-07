y2 <- c(-16, 22, 31, NA, 52, 66, 74, 88, 99, 105, 200, 253, NA)

# 2
is.na(y2)


# 3
mean(y2, na.rm = T )


# 4
mean(y2 <- ifelse(is.na(y2), 100, y2))