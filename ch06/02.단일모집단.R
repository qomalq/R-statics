##### 단일 모집단의 가설 검정
#### 단일 모집단의 평균 검정 - 1 smaple T test
df = read.table('data/babyboom.dat.txt', header = F)
names(df) = c('time','gender','weight','minutes')
head(df)
girl = subset(df, gender == 1)  ##df[df$gender == 1]
weight = girl$weight
weight
varx = mean(weight)
s = sd(weight)
n = length(weight)
mu0 = 2800
t.test(weight, mu=mu0, alternative = 'greater')

t = (varx - mu0) /( s / sqrt(n))

#### - 정규성 검정 -1 sample T 표본이 정규성을 가져야 한다.
shapiro.test(weight)
# p-value가 0.05 이상이어야 정규성을 가진다고 볼 수 있다.
# weight 경우는 p-value가 0.02 이므로 정규성을 갖는다고 볼 수 없다.
qqnorm(weight)
qqline(weight)

x = c(25,16,44,82,36,58,63,18)
shapiro.test(x)
qqnorm(x)
qqline(x)

## 단일 모비율의 검정
bb = read.table('data/restitution.txt', header = T)
head(bb)
rel = ifelse(bb$rst < 0.4134 | bb$rst >0.4374, 1, 0)

# 검정 통계량 계산
n = length(rel)
nos = sum(rel)
phat = nos / n
p0 = 0.1

z = (phat-p0)/sqrt(p0 * (1-p0)/n)
alpha = 0.05
upper.limit = qnorm(1-alpha)
p.value = 1-pnorm(z)
c(upper.limit, p.value)

# 검정통계량이 임계치 보다 작으므로 귀무가설을 채택한다.
# p-value가 유의수준 0.05보다 크기 때문에 귀무가설을 채택한다.

prop.test(nos,n=n,p=0.1,alternative = 'greater', correct = F)
