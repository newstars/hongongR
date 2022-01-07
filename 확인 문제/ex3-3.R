# 2번은 단순 빈칸 채우기 문제이므로 예제 파일을 제공하지 않습니다.

# 3
sum <- 0
for(i in 1:100) {
  sum <- sum + i
  i <- i + 1
}
cat(sum)