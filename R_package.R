rm(list=ls())

#패키지 설치: install.packages('패키지이름(문자열로!!)')
install.packages('reshape')
#패키지로딩: library('패키지이름') 또는 library(패키지이름)
library('reshape')
library(reshape) #동일식

data(airquality) #airquality data 갖고오기

names(airquality) #column명

#column 명 소문자로 바꾸기
colnames(airquality)<- tolower(colnames(airquality))
#바뀌었나 확인
names(airquality)

#melt 
a<- melt(airquality,id=c('month','day'), na.rm = TRUE)
r1<- cast(a, day~month~variable)
r2 <- cast(a, month~variable, mean)
r3 <- cast(a, month~variable, mean, margins=c('grand_row', 'grand_col'))
r4 <- cast(a, day~month, mean, subset=variable=='ozone')
r5 <- cast(a, month~variable, range)