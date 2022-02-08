rm(list=ls())

m1 = matrix(seq(1,10), nrow=5, byrow=TRUE)
m2 = matrix(seq(1,6), ncol=3)
m3= rbind(seq(1,3), seq(4,6), seq(7,12)) #1행,2행,3행
m4= cbind(seq(1,3),seq(4,6)) #1열,2열

#============================================

rm(list=ls())

m <- matrix(s?q(1,12), nrow=4, ncol=3)
m1 <- m[2,3]
m2 <- m[3,]
m3 <- m[,-2] #2열을 빼고 / 3열이 2열로 땡겨져서

m44<-m[c(2,3),] #m 매트릭스에서 2,3행 뽑기
m4<-m[c(2, 3), 2] #m매트릭스에서 2,3행의 2열뽑기

m5<- m[c(TRUE,FALSE, FALSE,TRUE),] #m 매트릭스에서 1,4 행 뽑기

?==============================================

rm(list=ls())
a1 = array(1:12, dim=c(3,2,2)) #3행 2열로 2개나누기 
a2 = array(1:16, dim=c(2,3)) # 2행 3열
