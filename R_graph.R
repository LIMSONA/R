rm(list=ls())

View(iris)
df = iris

#산점도 plot(x,y)

#산점도 행렬: 여러개의 변수 관계 알아보기
gp<- pairs(df)

#이상치 존재 확인(결측치 빼고 그려짐)
gp2<-boxplot(df)

#히스토그램: 여속형 수치에 적합 hist()

#막대그래프: barplot()
