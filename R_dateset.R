rm(list=ls())

# R에서 기본 갖고 있는 iris 데이터셋
View(iris)

#위에서 3줄 출력
head(iris, 3)

#아래에서 3줄 출력
tail(iris, 3)

#기초통계량 
summary(iris)

#데이터구성표시
str(iris)

#출력하기 데이터셋$변수명
print(iris$Sepal.Width)

#dataset을 고정으로 사용하겠다고 선언
#detach 전까지 고정으로 사용
attach(iris)
print(Sepal.Width)

#===========================
#고정된 데이터셋 사용해제
detach(iris)

# 오류 발생함 print(sepal.width)
# 다시 iris를 써줘야함
print(iris$Sepal.Width)