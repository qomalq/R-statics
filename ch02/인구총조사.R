library(ggplot2)
load('data/pop.rda')
ggplot(data = pop,aes(x=V1))+ geom_bar()
tableV1 = table(pop$V1)
barplot(tableV1, main = '남녀 인구수', xlab='성별',ylab = '인구수')

tableV5 = table(pop$V5)
tableV5
barplot(tableV5, main = "출생아(남자)별 빈도",
        xlab = "출생아 수",
        ylab = "빈도")

hist(pop$V2, main="연령별 분포", xlab="연령", ylab="빈도" )

hist(pop$V2, main="연령별 분포", breaks = c(seq(0,90,10)),
     right = F,
     probability = T,
     xlab="연령", ylab="빈도" )
table.V4 <- table(pop$V4)
table.V4
pie( table.V4, main="학력수준별 비중", cex=0.8)
