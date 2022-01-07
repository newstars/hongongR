library(dplyr)

# 2
sample_n(mtcars, 5)


# 3
summarise(mtcars, gear_mean = mean(gear))


# 4
group_by(mtcars, gear)