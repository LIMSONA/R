
https://woosa7.github.io/R-%EC%8B%9C%EA%B3%84%EC%97%B4%EB%B6%84%EC%84%9D-Time-Series-ARIMA/
# R을 이용한 시계열분석
## 영국왕들의 사망 시 나이 데이터를 이용한 시계열 분석

# 패키지 설치
install.packages("tseries")
install.packages("forecast")
install.packages("TTR")

# 패키지 불러오기
library(tseries)
library(forecast)
library(TTR)

#자료 읽기 및 그래프 그리기
king <- scan("http://robjhyndman.com/tsdldata/misc/kings.dat",skip=3)
king.ts <- ts(king)
plot.ts(king.ts)

#분해시계열

# 3년마다 평균을 내서 그래프 plot.ts
# SMA(data, n = 이동평균수) : 시계열 데이터를 이동평균한 값 생성
king.sma3<- SMA(king.ts, n=3)
plot.ts(king.sma3)

# 8년마다 평균을 내서 그래프
king.sma8<- SMA(king.ts, n=8)
plot.ts(king.sma8)

################################################

#ARIMA 모델

# 시계열 데이터를 차분
#diff(data, differences = 차분횟수)
king.ff1<- diff(king.ts, differences = 1)
plot.ts(king.ff1)

# # 5) ACF 값과 그래프를 통해 래그 절단값을 확인
acf(data, lag.max = 래그수)

# 6) PACF 값과 그래프를 통해 래그 절단값을 확인
pacf(data, lag.max = 래그수)

# 7) 데이터를 활용하여 최적의 ARIMA 모형을 선택
auto.arima(data)

# 8) 선정된 ARIMA 모형으로 데이터를 보정(fitting)
arima(data, order = c(p, d, q))

# 9) ARIMA 모형에 의해 보정된 데이터를 통해 미래값을 예측
forecast.Arima(fittedData, h = 미래예측수)

# 10) 시계열 데이터를 그래프로 표현
plot.ts(시계열데이터)

# 11) 예측된 시계열 데이터를 그래프로 표현
plot.forecast(예측된시계열데이터)