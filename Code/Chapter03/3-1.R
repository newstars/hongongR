# 숫자와 문자 변수 생성하기(p.104)
x <- 10
x
y <- "HI"
y


# Hello World 문자 출력하기(p.106)
print("Hello World")


# 1부터 100까지 더한 값을 출력하기(p.106)
a <- sum(1:100)
a


# 오늘 날짜 출력하기(p.107)
Sys.Date()


# 숫자 3개 곱하기(p.108)
multi_three_return <- function(x, y, z) {
  res <- x*y*z
  return(res)
}
multi_three_return(3, 5, 6)

