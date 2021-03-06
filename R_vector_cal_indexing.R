rm(list=ls())

v1<-seq(2,10,2)
v2<- rep(2,5)
v3<-v1+v2
v4<-v1%/%v2
v5<-v1^v2

#===============================

#벡터는 하나의 열로 구성됨!!
x<-c(1,4,8) #3*1
y<-c(2,3) # 2*1

#행과 열을 바꾸는 전치행렬
z<-t(y) # 1*2

m<-x%*%z #3*2


#===============================

rm(list=ls())
v1<-rep(3,6)
v2<-c(1,2,3)

v3<-v1+v2 #4,5,6,4,5,6
#부족한 만큼v2를 반복해서 연산됨

v11<-rep(3,7)
v33<-v11+v2 #4,5,6,4,5,6,4
#배수로도 길이가 일치하지 않는 오류메세지 뜨지만 계산은 됨

v4<-v2+3 #4,5,6 
#벡터의 경우에는 배수관계여야하고, 스칼라의 경우에는 아니어도 됨!

#===============================

rm(list=ls())
#인덱싱!!

v1<-1:5 #c(1:5)
r1=v1[3] #3번인덱스에 있는걸 가져와라 => 3
r2=v1[-3] #3번 인덱스를 빼고 가져와라 => 1,2,4,5
r3=v1[2:4] #=>2,3,4
r33=v1[2:2] #=>2


#조건문 + 인덱싱
v1%%2==0 # F,T,F,T,F
#2로나누었을때 나머지 0인 것을 출력
r4=v1[v1%%2==0] #=> 2,4

names(v1)<-c("A","B","C","D","E")
r5 = v1["B"] #named int 2
#위와 동일식
r6= v1[2] #named int 2

r7=v1[c(1,4)] #named int 1,4
r8=v1[-c(1,4)] #named int 2,3,5
