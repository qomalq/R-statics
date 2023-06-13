cafe =read.csv('data/cafedata.csv', stringsAsFactors = F)
cafe
str(cafe)
head(cafe)
dim(cafe)
summary(cafe)

cafe$Coffees = as.numeric(cafe$Coffees)
sort(cafe$Coffees)
sort(cafe$Coffees)
sort(cafe$Coffees, decreasing = T)[1]
sort(cafe$Coffees)[length(cafe$Coffees)-sum(is.na(cafe$Coffees))]

min(cafe$Coffees, na.rm = T)
max(cafe$Coffees, na.rm = T)


stem(cafe$Coffees)
table(cafe$Coffees)

num.na = sum(is.na(cafe$Coffees))
weight = (1/(length(cafe$Coffees)-num.na))
sum(cafe$Coffees * weight, na.rm = T)
mean(cafe$Coffees, na.rm = T)
median(cafe$Coffees, na.rm = T)

mean(cafe$Coffees, na.rm = T)
rc = na.omit(cafe$Coffees)
length(rc)
rc[rc==max(rc)] =480
mean(rc)

median.idx = (1+length(rc))/2
median.idx
sort(rc)[median.idx]
median(rc)

height <- c(164, 166, 168, 170, 172, 174, 176)
height.m = mean(height)
h.dev = height - height.m
sum(h.dev)

height.dev2 = h.dev ^2

mean(height.dev2)

mean(height)
var(height)
sd(height)

qs = quantile(cafe$Coffees, na.rm = T)
boxplot(cafe$Coffees)
bp = boxplot(cafe$Coffees,main="커피 판매량에 대한 상자도표")

IQR(cafe$Coffees, na.rm = T)
qs[4]-qs[2]


boxplot(cars$dist)
hist(cars$dist, breaks = seq(0,120,10))
qs = quantile(cars$dist)
qs
iqr =IQR(cars$dist)
upperlimit = qs[4] + 1.5*iqr
lowerlimit = qs[2] - 1.5*iqr
upperlimit
lowerlimit
cars$dist[cars$dist>upperlimit | cars$dist<lowerlimit]











