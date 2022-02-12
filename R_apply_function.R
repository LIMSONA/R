rm(list=ls())

a<- matrix(1:12, nrow=4) #1~12까지 행은 4개

#apply(array->array)
#row 1 / column 2
#sum
r1<- apply(a,1,sum) #각 행별로 sum
r2<- apply(a,2,sum) #각 열별로 sum

r3<- apply(a,1,mean) #각 행별로 mean

r4<- apply(a,2,max) # 각 열별로 max

#=================================================
rm(list = ls())

a<- list(c(1,2,3), seq(1,9,2), seq(2,8,2))

#lapply 리스트화시키기
r1<- lapply(a,sum)
r2<- unlist(r1)

#sapply list 대신 행렬 or 벡터로 반환
r3<- sapply(a,sum)
r4 <- lapply(c(1,2,3), function(x) { x*2 - 1 })
r44<- unlist(r4)

#======================================
rm(list=ls())

a<- c(1, 11, 2, 22, 3, 33, 4, 44)

b<- rep(c(TRUE,FALSE), 4) 
#TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE

#tapply(data, 그룹기준(요인), 함수)
r1<-tapply(a, a<=10, sum)
#FALSE  TRUE 
#110    10

r2<-tapply(a, c(1,1,2,2,3,3,4,4), sum)
# 1  2  3  4 
#12 24 36 48

r3<-tapply(iris$Sepal.Length, iris$Species, mean)

#r1과 동일함
r4<-tapply(a,b, sum)
#FALSE  TRUE 
#110    10