##### T분포

x = seq(-3,3, by=0.01)
y= dnorm(x)
t1 = dt(x, df=1)
t2 = dt(x, df=2)
t8 = dt(x, df=8)
t30 = dt(x, df=30)

plot(x, y, type='l', lty = 1, axes = F, xlab = 'x', ylab = '', col='red')
axis(1)
lines(x, t1, lty=4, col='black')
lines(x, t2, lty=3, col='magenta')
lines(x, t8, lty=2, col='blue')
lines(x, t30, lty=6, col='green')
legend('topright',paste('df :', c(1,2,8,30)),
       lty=c(4,3,2,6),
       col=c('black','magenta','blue','green'),cex=0.7)



# 카이제곱 분포
x = seq(0,20, by=0.01)
ch1 = dchisq(x,df=1)
ch3 = dchisq(x,df=3)
ch5 = dchisq(x,df=5)
ch10 = dchisq(x,df=10)

plot(x, type = 'n', xlim = c(0,20), ylim = c(0,0.3), main = '',
     xlab = 'x', ylab = '', axes = F)
axis(1); axis(2)
lines(x, ch1, lwd=2,lty=1,col='black')
lines(x, ch3, lwd=2,lty=2,col='red')
lines(x, ch5, lwd=2,lty=3,col='blue')
lines(x, ch10, lwd=2,lty=4,col='green')
legend('topright',paste('df :', c(1,3,5,10)),
       lty=c(1,2,3,4),
       col=c('black','red','blue','green'),cex=0.7)

### F 분포
x = seq(0,2, by=0.01)
f3.5 = df(x,df1=3,df2=5)
f3.20 = df(x,df1=3,df2=20)
f10.5 = df(x,df1=10,df2=5)
f10.20 = df(x,df1=10,df2=20)

plot(x, f3.5, type = 'l', ylim = c(0,0.9), lwd=2, axes = F, col='red',
     xlab = 'x',
     ylab = '')
axis(1); axis(2)
lines(x, f3.20, lty=2, lwd=2, col='blue')
lines(x, f10.5, lty=3, lwd=2, col='black')
lines(x, f10.20, lty=4, lwd=2, col='magenta')
legend('topright',paste('df :', c('3, 5','3, 20','10, 5','10, 20')),
       lty=c(1,2,3,4),
       col=c('red','blue','black','magenta'),cex=0.7)


library(plotly)




x = seq(-3,3, by=0.01)
t1 = dt(x, df=2)
t2 = dt(x, df=8)
t3 = dt(x, df=32)
t4 = dt(x, df=64)


mean(rbinom(t1,2,mean(t1)))
mean(rbinom(t2,8,mean(t2)))
mean(rbinom(t3,32,mean(t3)))
mean(rbinom(t4,64,mean(t4)))



chi1 =dchisq(x, df=10)
chi2 =dchisq(x, df=10)
chi3 =dchisq(x, df=10)
chi4 =dchisq(x, df=10)

mean(rbinom(chi1,2,mean(chi1)))
mean(rbinom(chi2,8,mean(chi2)))
mean(rbinom(chi3,32,mean(chi3)))
mean(rbinom(chi4,64,mean(chi4)))

f1 = df(x,2,8)
f2 = df(x,2,32)
f3 = df(x,2,64)
f4 = df(x,8,32)
f5 = df(x,8,64)
f6 = df(x,32,64)

mean(rbinom(f1,2,mean(f1)))
mean(rbinom(f2,2,mean(f2)))
mean(rbinom(f3,2,mean(f3)))
mean(rbinom(f4,2,mean(f4)))
mean(rbinom(f5,2,mean(f5)))
mean(rbinom(f6,2,mean(f6)))

n= 1000
df =5; df2=10
t2.mean = rep(NA,n)
t4.mean = rep(NA,n)
t16.mean = rep(NA,n)
t32.mean = rep(NA,n)
for (i in 1:n) {
    t2.mean[i] = mean(rt(2, df=df))    
    t4.mean[i] = mean(rt(4, df=df))    
    t16.mean[i] = mean(rt(16, df=df))    
    t32.mean[i] = mean(rt(32, df=df))    
}
c(mean(t2.mean), sd(t2.mean))

chi2.mean = rep(NA, n)
chi4.mean = rep(NA, n)
chi16.mean = rep(NA, n)
chi32.mean = rep(NA, n)
for (i in 1:n) {
    chi2.mean = mean(rchisq(2, df=df))
    chi4.mean = mean(rchisq(4, df=df))
    chi16.mean = mean(rchisq(16, df=df))
    chi32.mean = mean(rchisq(32, df=df))
    
}
f2.mean = rep(NA, n)
f4.mean = rep(NA, n)
f16.mean = rep(NA, n)
f32.mean = rep(NA, n)
for (i in 1:n) {
    f2.mean = mean(rf(2, df1=df, df2=df2))
    f4.mean = mean(rf(4, df1=df, df2=df2))
    f16.mean = mean(rf(16, df1=df, df2=df2))
    f32.mean = mean(rf(32, df1=df, df2=df2))
    
}

m = df2 / (df-2)
s = sqrt(2 * df2^2 * (df + df2 -2)/(df * (df2-2)^2*(df2-4)))

par(mfrow=c(2,2),oma = c(0,0,2,0))
hist(f2.mean,prob=T, col='orange', border='red')
x2=seq(min(f2.mean),max(f2.mean), length=1000)
y2 = dnorm(x2, m, s/sqrt(2))
lines(x2, y2,lty=2,lwd=2)


