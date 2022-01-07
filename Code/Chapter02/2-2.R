# 숫자형 벡터 생성하기(p.85)
ex_vector1 <- c(-1, 0, 1)
ex_vector1


# 숫자형 벡터 속성과 길이 확인하기(p.86)
mode(ex_vector1)
str(ex_vector1)
length(ex_vector1)


# 문자형 벡터 생성하기(p.87)
ex_vector2 <- c("Hello", "Hi~!")
ex_vector2
ex_vector3 <- c("1", "2", "3")
ex_vector3


# 문자형 데이터 속성과 길이 확인하기(p.88)
mode(ex_vector2)
str(ex_vector2)
mode(ex_vector3)
str(ex_vector3)


# 논리형 벡터 생성하고 속성 확인하기(p.88)
ex_vector4 <- c(TRUE, FALSE, TRUE, FALSE)
ex_vector4
mode(ex_vector4)
str(ex_vector4)


# 범주형 데이터 생성하기(p.90)
ex_vector5 <- c(2, 1, 3, 2, 1)
ex_vector5

cate_vector5 <- factor(ex_vector5, labels = c("Apple", "Banana", "Cherry"))
cate_vector5


# 행렬 데이터 생성하기(p.91)
x <- c(1, 2, 3, 4, 5, 6)
matrix(x, nrow = 2, ncol = 3)
matrix(x, nrow = 3, ncol = 2)


# 옵션 추가로 결과 비교하기(p.92)
x <- c(1, 2, 3, 4, 5, 6)
matrix(x, nrow = 2, ncol = 3)
matrix(x, nrow = 2, ncol = 3, byrow = T)


# 배열 생성하기(p.93)
y <- c(1, 2, 3, 4, 5, 6)
array(y, dim = c(2, 2, 3))


# 리스트 생성하기(p.94)
list1 <- list(c(1, 2, 3), "Hello")
list1


# 변수 속성 확인하기(p.94)
str(list1)


# 데이터 프레임 생성하기(p.96)
ID <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
SEX <- c("F", "M", "F", "M", "M", "F", "F", "F", "M", "F")
AGE <- c(50, 40, 28, 50, 27, 23, 56, 47, 20, 38)
AREA <- c("서울", "경기", "제주", "서울", "서울", "서울", "경기", "서울",
          "인천", "경기")
dataframe_ex <- data.frame(ID, SEX, AGE, AREA)
dataframe_ex


# 변수 속성 확인하기(p.97)
str(dataframe_ex)


