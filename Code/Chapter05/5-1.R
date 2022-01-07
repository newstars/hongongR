# dplyr 패키지 설치 및 로드하기(p.207)
install.packages("dplyr")
library(dplyr)


# mtcars 데이터 세트 구조 확인하기(p.208)
nrow(mtcars)
str(mtcars)


# 조건에 맞는 데이터 추출하기(p.209)
filter(mtcars, cyl == 4)


# 두 가지 조건에 맞는 데이터를 필터링하기(p.209)
filter(mtcars, cyl >= 6 & mpg > 20)


# 지정한 변수만 추출하기(p.210)
head(select(mtcars, am, gear))


# 오름차순 정렬하기(p.211)
head(arrange(mtcars, wt))


# 오름차순 정렬한 후 내림차순 정렬하기(p.212)
head(arrange(mtcars, mpg, desc(wt)))


# 새로운 열 추가하기(p.213)
head(mutate(mtcars, years = "1974"))

head(mutate(mtcars, mpg_rank = rank(mpg)))


# 중복 값 제거하기(p.214)
distinct(mtcars, cyl)

distinct(mtcars, gear)


# 여러 개 열에서 중복 값 제거하기(p.215)
distinct(mtcars, cyl, gear)


# 데이터 요약하기(p.216)
summarise(mtcars, cyl_mean = mean(cyl), cyl_min = min(cyl), cyl_max = max(cyl))

summarise(mtcars, mean(cyl), min(cyl), max(cyl))


# 그룹별로 요약하기(p.217)
gr_cyl <- group_by(mtcars, cyl)
summarise(gr_cyl, n())

gr_cyl <- group_by(mtcars, cyl)
summarise(gr_cyl, n_distinct(gear))


# 샘플 데이터 10개 추출하기(p.218)
sample_n(mtcars, 10)


# 전체 데이터의 20%를 샘플로 추출하기(p.219)
sample_frac(mtcars, 0.2)


# 파이프 연산자로 그룹별 요약하기(p.220)
group_by(mtcars, cyl) %>% summarise(n())


# 파이프 연산자 없이 순위 기준으로 정렬하기(p.220)
mp_rank <- mutate(mtcars, mpg_rank = rank(mpg))
arrange(mp_rank, mpg_rank)


# 파이프 연산자를 사용하여 순위 기준으로 정렬하기(p.221)
mutate(mtcars, mpg_rank = rank(mpg)) %>% arrange(mpg_rank)


