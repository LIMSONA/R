rm(list=ls())
#numeric
iv<-c(1,2,3)
#character
cv <-c("a","b","c")
#logical
bv <-c(TRUE,FALSE,TRUE)
#numeric
fv <- c(3.4,2.5,8)

t <- c(1,2,3,4)
#numeric+character+logical => numeric
icv <- c(iv,cv,bv)

#======================================

rm(list=ls())

#seq는 파이썬의 range랑 비슷
#seq(from,to,by)
#interger
v1 = seq(1,5)
#위와 동일식
v11=1:5

v2 =seq(1,10,2) #1,3,5,7,9

#범위 안에서 일정간격으로 
v3=seq(1,10,length=4) #1,4,7,10

#=======================================

rm(list=ls())

#rep(x,time,반복횟수)
v1= rep(1,5)
#위와 동일식
v2= rep(1,time=5)

v3= rep(3:5, 3)#3,4,5,3,4,5
#위와 동일식
v33=rep(3:5, time=3)

v4=rep(3:5,each=2) #3,3,4,4,5,5

v5=rep(seq(1,5,2),2) # 1,3,5,1,3,5