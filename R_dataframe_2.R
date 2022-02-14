rm(list=ls())

df=read.csv('./data/easySample3.csv',fileEncoding = 'UTF-8-BOM')
df1<- df[,c(2,4,8,9)]

#데이터프레임$변수명
df1$score <-c(90, 80, 50, 70, 100, 95, 85, 70, 95, 75)

#subset(x, subset=조건, select=조회) -->subset생략가능
df2<- subset(df1, subset = (salary>=5000))
df3<- subset(df2, select=-score) #score 빼기

df4<- subset(df1, subset = (salary>=5000), select = -score)

df5<- subset(df2, select = c(pname,dept,salary))

#열 이름 바꾸기
colnames(df5)[2]<- 'department'
