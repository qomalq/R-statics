###### 산점도

plot(c(1:10),c(2,3,12,3,5,3,2,1,8,5), 
     pch='*', 
     col='red',
     xlab = 'x축 제목',
     ylab = 'y축 제목',
     main = '산점도')

#### Line graph
plot(c(1:10),c(2,3,12,3,5,3,2,1,8,5), 
     type = 'l',
     lwd =3,
     lty=3,
     col='blue',
     xlab = 'x축 제목',
     ylab = 'y축 제목',
     main = '선그래프')


###### Pie chart
x = c(10,20,30,40)
pie(x, init.angle = 90,
    labels = c('Apples','Bananas','Cherries','Dates'),
    main = 'my favorite fruits')

###### 막대 그래프
x=c('A','B','C','D')
y=c(3,4,6,7)
barplot(y,names.arg = x, col='orange')
