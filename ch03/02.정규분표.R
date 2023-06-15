##### 확률 분포
### 이항 분포

n=6
p=1/3
x=0:n


# 확률 질량 함수 
dbinom(2,6,p)
dbinom(x=4,size = n,prob = p)
dbinom(x,n,p)
px = dbinom(x,n,p)
plot(x, px, type = 's', xlab = '성공횟수',ylab = '확률P[X=x]', main = 'B(6,1/3')
plot(x, px, type = 'h', xlab = '성공횟수',ylab = '확률P[X=x]', main = 'B(6,1/3',
                    lwd=20,col = 'red')

# 누적 분포 함수
pbinom(2,n,p)

#성공횟수가 1~3인 확률
dbinom(1,n,p) +dbinom(2,n,p)+ dbinom(3,n,p)
pbinom(3,n,p) - pbinom(0,n,p)


qbinom(0.1,n,p)

# 이항분포를 따르는 n개의 표본 추출
set.seed(2023)
rbinom(10,n,p)

# 기댓값과 분산
n=6
p=1/3
x=0:n
px = dbinom(x,n,p)
ex =sum(x*px)
ex
ex2 = sum(x^2*px)
varx = ex2 - (ex)^2
varx

### 정규분포
# 어느 대학교 남학생 키의 평균은 170, 표준편차는 6이다.
options(digits = 4)
mu = 170
sigma = 6
ll = mu -3*sigma
ul = mu +3*sigma
x = seq(ll,ul,by=0.01)
px = dnorm(x,mu,sigma)
plot(x,px,type = 'l',xlab = '남학생의 키',ylab ='P[X=x]',
     lwd=2, col='red', main = 'N(170,6^2)')
prob = round(pnorm(180,170,6),4)
print(paste('180cm보다 큰 학생의 확률은', 1-prob,'입니다.'),)

# 상위 10프로
qnorm(0.9,170,6)

# 키가 165cm ~ 175cm 확률
pnorm(175,170,6) - pnorm(165,170,6)

# 키가 95%에 속하는 학생들의 키 범위
qnorm(0.975, 170, 6)
qnorm(0.025, 170, 6)
pnorm(158.2,170,6)+ (1 -pnorm(181.8,170,6))

##400개의 난수를 생성하여 모집단과 비교
set.seed(2023)
smp = rnorm(400,170,6)
print(paste(mean(smp), sd(smp)))
hist(smp, prob=T, col='white',border = 'black')
lines(x,px, lty=2, lwd=2, col='red')

## 정규분포 특징
mu = 0
sigma =1
p0.05 = qnorm(0.95)
p0.05
qnorm(0.975)
qnorm(0.995)



z <- seq(-3, 3, by=0.001)
z.p <- dnorm(z)
plot(z, z.p, axes=F, type="l", 
     main="표준정규분포 (95%)", ylab="", ylim=c(-0.04, 0.4))
axis(1)

lines(c(-3, 3), c(0, 0))
points(-1.96, -0.02, pch=17, col="red")
text(-1.96, -0.035, "-1.96", col="red")
points(1.96, -0.02, pch=17, col="red")
text(1.96, -0.035, "1.96", col="red")

s <- seq(-1.96, 1.96, by=0.001)
s.z <- dnorm(s, mean=0, sd=1)
s <- c(-1.96, s, 1.96)
s.z <- c(0, s.z, 0)
polygon(s, s.z, col="red", density=10, angle=305)