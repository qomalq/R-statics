### 단순 선형회귀
# 아버지와 아들 키
hf = read.table('data/Galton.txt', header = T, stringsAsFactors = F)
hf$Gender = factor(hf$Gender, levels = c('M','F'))
hf.son = hf[hf$Gender == 'M',]
hf.son = hf.son[c('Father','Height')]
hf.son = hf.son *2.54

out =lm(Height ~ Father, data = hf.son)
summary(out)
par(mfrow = c(2,2))
plot(out)
par(mfrow=c(1,1))
     
women
plot(weight ~ height, data = women)
out2 = lm(weight~height, data = women)
summary(out2)
par(mfrow=c(2,2))
plot(out2)
par(mfrow = c(1,1))


