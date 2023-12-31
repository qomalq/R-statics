# 산점도
head(cars)
plot(cars$speed,jitter(cars$dist),
     main = "속도와 제동거리",
     xlab = "속도(mph)",
     ylab = "제동거리(ft)",
     pch = 1,
     col = 'red')

# 선 그래프
tail(Nile)
plot(Nile, main='Nile강의 연도별 유량 변화',
     type = 'p',    #산점도
     xlab = '연도',
     ylab = '유량',)
tail(Nile)
plot(Nile, main='Nile강의 연도별 유량 변화',
     xlab = '연도',
     ylab = '유량',)

library(ggplot2)
df = as.data.frame(Nile)
head(df)
df$year = 1871:1970
head(df)
a =ggplot(df, aes(x=year,y=x))+ 
    geom_line() +
    ggtitle('나일강의 연도별 유량 변화') +
    xlab('연도')+
    ylab('유량')
ggThemeAssistGadget(a)
a + theme(panel.grid.major = element_line(linetype = "dashed"),
    panel.grid.minor = element_line(linetype = "dashed"),
    panel.background = element_rect(linetype = "dashed"),
    plot.background = element_rect(fill = "lightsteelblue3",
        linetype = "dashed"))