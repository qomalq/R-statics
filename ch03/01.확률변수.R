# 확률 변수의 평균과 기댓값
# 동전을 2회 던졌을 때 앞면의 개수
x = c(0,1,2)
px = c(1/4,1/2,1/4)
Ex = sum(x*px)
Ex
x2 = x^2
ex2 = sum(x^2*px)
varx = ex2 - Ex^2
varx

#### 동전을 4회 던졌을 때 앞면의 개수
x = c(0,1,2,3,4)
px = c(1/16,1/4,3/8,1/4,1/16)
Ex = sum(x*px)
Ex
ex2 = sum(x^2*px)
varx = ex2 -Ex^2
varx

## 주사위 2회 던졌을 때 3의 배수의 갯수
x = c(0,1,2)
px = c(4/9,4/9,1/9)
Ex = sum(x*px)
ex2 = sum(x^2*px)
varx = ex2 -Ex^2
varx
