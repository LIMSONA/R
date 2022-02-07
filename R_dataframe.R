rm(list=ls())
name <- c('tom', 'jerry', 'cindy', 'mark')
gender <- c('f', 'm', 'f', 'm')
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df1 <-data.frame(name,gender,kor,eng)
# 4obs(4개의 오브젝트 = 4개의 행)
# 4 variavbles(4개의 열)

df2<-data.frame(matrix(seq(1,9),nrow=3)) #3*3 df

df3<-data.frame(gender=c("f","m","f","m"),
                score=c(90,100,80,95),
                stringsAsFactors = TRUE)
#stringsAsFactors는 TRUE로 지정하면 문자열을 factor형으로 저장함

#=====================================

rm(list=ls())
name <- c('tom', 'jerry', 'cindy', 'mark')
gender <- c('f', 'm', 'f', 'm')
kor <- c(90, 100, 80, 95)
eng <- c(90, 95, 100, 80)
df <-data.frame(name,gender,kor,eng)

v1<-df[1,3]

df1<-df[2,] #행을 지정 시  데이터프레임이 반환
v2<-df[,"name"] #열을 지정 시 ★벡터★가 반환
#위와 동일식
v3<-df$name #name열 가져온 ★벡터★

####단독의 경우
df2<-df[1] #콤마없이 숫자만 있으면 열의 정보 / 데이터프레임이 반환됨
#위와 동일식
df3<-df["name"] # 데이터 프레임

df4<- df[[1]] #대괄호 한번 더 하면, 1번열의 ★벡터★가 나옴

####목록의 경우
df4<-df[seq(1,3), c(1,2)] #1,2,3 행과 1,2열 df
df5<-df[,2:4] #2,3,4열에 대한 df
df6<- df[1:3] #1,2,3열에 대한 df
df7<- df[-2] #2열 제외한 df
df8<- df[-c(1,3)] #1,3열 제외한 df
df88<- df[-c(1,3,4)] #1,3,4열 제외한 df
