rm(list=ls())

install.packages("MASS")
library(MASS)

#데이터 살펴보기
head(Cars93)
attach(Cars93)

#Price 종속변수로 선정 / EngineSize,RPM,Weight를 독립변수로 
result<-lm(Price~EngineSize+RPM+Weight, data=Cars93)


# 결과 및 해석하기!
result2<- summary(result)

#F-statistic: 37.98 on 3 and 89 DF,  p-value: 6.746e-16
#==>p-value 값이 0.05보다 작으니, 회계모형이 통계적으로 매우 유의함

#Multiple R-squared:  0.5614,	Adjusted R-squared:  0.5467
#==> 결정계수가 조금 낮게 나타나 데이터 설명력은 낮음