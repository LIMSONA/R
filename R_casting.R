rm(list = ls())

#소수점 아래 절삭되어 정수형 반환
r1<- as.integer(3.14) 

r2<- as.numeric('abc')
#NA_real라는 경고 메시지 발생

r3<- as.numeric(TRUE)

#값이 있으니 TRUE
r4<- as.logical(0.1)

#=======================================
rm(list=ls())

r1<-as.Date('2022-2-11')
#출력은 2022-02-11로 나옴

r2<-as.Date('2022/2/11')
#위와 동일식. 출력은 2022-02-11로 나옴


#출력: 0002-11-20
r33<-as.Date('02/11/2021') 
#출력:2021-02-11
r3 <- as.Date('02/11/2021', format='%m/%d/%Y') 
#출력:2020-02-11
r333<- as.Date('02/11/2021', format='%m/%d/%y')

#출력: "2022-02-11"
r4<-format(Sys.Date()) #현재 date
#출력: "02/11/2022"
r5 <- format(Sys.Date(), format='%m/%d/%Y')

#============================================
rm(list = ls())
r1 <- format(Sys.Date(), '%a') #요일
r2 <- format(Sys.Date(), '%b') #월
r3 <- format(Sys.Date(), '%y') #연도 2자리
r4 <- format(Sys.Date(), '%Y') #연도 4자리
  