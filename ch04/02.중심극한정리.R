#### 중심극한 정리
## 모집단이 정규분포일 경우
options(digits = 4)
set.seed(9)
n = 10000
r1.mean = rep(NA, 10000)
r2.mean = rep(NA, 10000)

for (i in 1:10000) {
     r1.mean[i] <- mean( rnorm(4, mean=3, sd=1) )
     r2.mean[i] <- mean( rnorm(4, mean=170, sd=6) )
}
# 표본평균의 평균과 표준편차
c(mean(r1.mean), sd(r1.mean))
c(mean(r2.mean), sd(r2.mean))

hist(r1.mean, prob=T,xlab = '표본평균',ylab = '밀도', main = 'N(3,1^2)',
     col = 'orange', border = 'red')
x1 = seq(min(r1.mean), max(r1.mean), length=10000)
y1 = dnorm(x1, 3, 1/sqrt(4))
lines(x1,y1, lty=2, lwd=2, col='blue')

hist(r2.mean, prob=T,xlab = '표본평균',ylab = '밀도', main = 'N(3,1^2)',
     col = 'orange', border = 'red')
x1 = seq(min(r2.mean), max(r2.mean), length=10000)
y1 = dnorm(x1, 170, 6/sqrt(4))
lines(x1,y1, lty=2, lwd=2, col='blue')



### 모집단이 임의의 분포(이한분포)일 경우
options(digits = 4)
set.seed(9)
t = 10
p = 0.1
x = 0:10
n = 1000
b2.mean <- rep(NA, n)
b4.mean <- rep(NA, n)
b32.mean <- rep(NA, n)
b64.mean = rep(NA, n)
# 표본 크기별로 1000번의 표본추출로 표본평균을 구하기
for (i in 1:n){
    b2.mean[i] = mean(rbinom(2,t,p))
    b4.mean[i] = mean(rbinom(4,t,p))
    b32.mean[i] = mean(rbinom(32,t,p))
    b64.mean[i] = mean(rbinom(64,t,p))
}

# 표본 평균의 평균 및 표준편차
c(mean(b2.mean),sd(b2.mean))
c(mean(b4.mean),sd(b4.mean))
c(mean(b32.mean),sd(b32.mean))
c(mean(b64.mean),sd(b64.mean))

# 이항분포 B(10,0.1)의 평균, 분산, 표준편차
c(10*0.1, 10*0.1*0.9, sqrt(10*0.1*0.9))

par(mfrow=c(2,2))
hist(b2.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 2", 
        ylab="", xlab="", col="orange", border="red")
x1 <- seq(min(b2.mean), max(b2.mean), length=1000)
y1 <- dnorm( x=x1, mean=1, sd=0.9/sqrt(2) )
lines(x1, y1, lty=2, lwd=2, col="blue")

hist(b4.mean, prob=T, xlim=c(0, 4), ylim=c(0, 1.2), 
        main="표본 크기 : 4", ylab="", xlab="", col="orange", border="red")
x2 <- seq(min(b4.mean), max(b4.mean), length=1000)
y2 <- dnorm( x=x2, mean=1, sd=0.9/sqrt(4) )
lines(x2, y2, lty=2, lwd=2, col="blue")

hist(b32.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 32", 
        ylab="", xlab="", col="orange", border="red")
x3 <- seq(min(b32.mean), max(b32.mean), length=1000)
y3 <- dnorm( x=x3, mean=1, sd=0.9/sqrt(32) )
lines(x3, y3, lty=2, lwd=2, col="blue")

hist(b64.mean, prob=T, xlim=c(0, 4), main="표본 크기 : 64", 
        ylab="", xlab="", col="orange", border="red")
x4 <- seq(min(b64.mean), max(b64.mean), length=1000)
y4 <- dnorm( x=x4, mean=1, sd=0.9/sqrt(64) )
lines(x4, y4, lty=2, lwd=2, col="blue")
par(mfrow=c(1,1))







%>% 



