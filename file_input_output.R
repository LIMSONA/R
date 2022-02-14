setwd("d://R")
getwd() #현재 디렉터리 반환

rm(list=ls())
#csv 파일 불러오기
df = read.csv('.//data//easySample.csv', fileEncoding = "UTF-8-BOM")
print(df)

#csv 파일 저장하기

write.csv(df, 'data/mySample.csv', row.names = FALSE)
write.csv(df, 'data/mySample_wr.csv', row.names = TRUE)

rm(list=ls())
#열이름 벡터
cname<- c('ID', 'name', 'birth', 'dept', 'english','japanese', 'chinese')

#df 만들기 (열은 cname 이용해서)
# , 마다 분리하기
df3<- read.table("data/easySample.txt", sep=",", col.names = cname)

rm(list=ls())
df4<- read.csv("data/mySample.csv")
#dfr 파일 저장하기
save(df4, file='data/myObject1.Rdata')


#df4 저장했으니 삭제해보고 잘 불러오는지 확인
rm(list=ls())
ls()

load('data/myObject1.Rdata')
print(df4)