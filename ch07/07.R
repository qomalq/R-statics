### 일원분산분석
ad = read.csv('data/age.data.csv')
head(ad)
tail(ad)
adsacle = factor(ad$scale)
g1 = ad[ad$scale ==1,]
g2 = ad[ad$scale ==2,]
g3 = ad[ad$scale ==3,]
 
 
boxplot(g1$age,g2$age.g3$age)

boxplot(age ~ scale, data= ad, col=rainbow(3))

#등분산성 검정
install.packages('lawstat')
library(lawstat)
levene.test(ad$age,ad$scale)
 ow = lm(age~scale, data = ad)
anova(ow) 

