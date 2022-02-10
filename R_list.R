rm(list=ls())
a<- list(name="julie",age=25, h_w=c(160,48))

v1<- a["name"] #list 형식

v2<- a$name #scalar 형식
v3<- a[["name"]]


#비교
v44<-a[3] #list 형식 
v4<- a[[3]] #numberic 형식 160 48

str(a) #데이터 구조를 보여준다. structure
# List of 3
# $ name: chr "julie"
# $ age : num 25
# $ h_w : num [1:2] 160 48
