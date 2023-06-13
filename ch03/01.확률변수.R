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
