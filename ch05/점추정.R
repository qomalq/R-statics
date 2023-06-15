##### 추정
### 유효성
options(digits = 4)
set.seed(1)

mean.seq <- function (x) {
    n <- length(x)
    sum <- 0
    n2 <- 0
        for( i in 1:n) {
            newx <- i * x[i]
            sum <- sum + newx
            n2 <- n2 + i
             }
        return( sum / n2 )
    }
y1 <- rep(NA, 1000)
y2 <- rep(NA, 1000)
for(i in 1:1000) {
    smp <- rnorm(3)
    y1[i] <- mean(smp)
    y2[i] <- mean.seq(smp)
}
sd(y1)
sd(y2)
par(mfrow=c(1,2))
hist(y1, probability = T, 
     xlim = c(-2,2),
     ylim=c(0,0.65),
     main =('(x1+x2+x3)/3'), col='orange', border='red')

hist(y2, probability = T, 
     xlim = c(-2,2),
     ylim=c(0,0.65),
     main =('(x1+2*x2+3*x3)/6'), col='orange', border='red')
par(mfrow=c(1,1))
