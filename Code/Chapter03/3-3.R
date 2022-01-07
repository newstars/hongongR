# 오른쪽 Environment 탭의 [빗자루 아이콘]을 눌러 워크스페이스를 정리한 후 실습을 진행하세요.

# 변수에 값을 할당하기(p.125 ~ p.126)
A <- 2
A
B = 10
B


C = D <-5
C
D


G <- E = 10


sum(x <- 1)
x
sum(y = 1)
y


# 논리 연산자로 진릿값 확인하기(p.129)
x <- 1:3
y <- 3:1
(x > 0) & (y > 1)
(x > 0) | (y > 1)


# 조건문으로 짝수 홀수 구분하기(p.131)
a <- 10
if (a %% 2 == 0) {
  print("짝수입니다")
} else {
  print("홀수입니다")
}


# 조건문으로 학점 분류하기(p.132)
b <- 80
if(b >= 90) {
  print("A 학점입니다")
} else if (b >= 80) {
  print("B 학점입니다")
} else {
  print("c 학점입니다")
}


# for() 함수로 구구단 2단 출력하기(p.133)
for(i in 1:9) {
  a <- 2*i
  print(a)
}


# for() 함수로 구구단 2단부터 9단까지 출력하기(p.133)
for(i in 2:9) {
  for(j in 1:9) {
    print(paste(i, " * ", j, " = ", i*j))
  }
}


# apply() 함수로 행렬 값 계산하기(p.135)
x <- matrix(1:4, 2, 2)
x
apply(x, 1, sum)
apply(x, 2, min)
apply(x, 1, max)


# iris 데이터 세트 구조 확인하기(p.135)
str(iris)
View(iris)


# apply() 함수로 iris 데이터 세트 값 처리하기(p.136 ~ p.137)
apply(iris[,1:4], 2, sum) # 합
apply(iris[,1:4], 2, mean) # 평균값
apply(iris[,1:4], 2, min) # 최솟값
apply(iris[,1:4], 2, max) # 최댓값
apply(iris[,1:4], 2, median) # 중간값


lapply(iris[, 1:4], sum)


sapply(iris[, 1:4], mean)
