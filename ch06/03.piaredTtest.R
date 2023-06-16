##### 모집단이 2개인 경우의 평균 비교 검정
data = read.table('data/chapter7.txt', header = T)
head(data)

girl = subset(data, gender==1)
boy = subset(data, gender==2)

# 등 분산성 테스트
var.test(data$weight ~ data$gender)

# 2 sample t test
t.test(data$weight ~ data$gender, mu=0,alternative='less', var.equal=T)
mean(girl$weight)
mean(boy$weight)

shapiro.test(girl$weight)
shapiro.test(boy$weight)
qqnorm(boy$weight)
qqline(boy$weight)

# paired T test
data2 = read.csv('data/anorexia.csv')
data2

# data$Prior - data$Post
t.test(data$Prior, data$Post, paired = T, alternative = 'less',)
