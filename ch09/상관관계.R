###### 상관관계
hf = read.table('data/Galton.txt', header = T, stringsAsFactors = F)
hf$Gender = factor(hf$Gender, levels = c('M','F'))
hf.son = hf[hf$Gender == 'M',]
hf.son = hf.son[c('Father','Height')]
hf.son = hf.son *2.54
f.mean = mean(hf.son$Father)
s.mean = mean(hf.son$Height)
cov.num = sum((hf.son$Father -f.mean) * (hf.son$Height - s.mean))
cov.fs = cov.num / (length(hf.son$Father) -1)

cov(hf.son$Father, hf.son$Height)

f.sd = sd(hf.son$Father)
s.sd = sd(hf.son$Height)
c(f.sd, s.sd)
cor.fs = cov.fs / (f.sd *s.sd)
cor(hf.son$Father, hf.son$Height)

hf.da = hf[hf$Gender == 'F',]
hf.da = hf.da[c('Mother','Height')]
hf.da = hf.da *2.54

m.mean = mean(hf.da$Mother)
d.mean = mean(hf.da$Height)
cov.num = sum((hf.da$Mother - m.mean) * (hf.da$Height - d.mean))
cov.md = cov.num / (length(hf.da$Mother)-1)
cov(hf.da$Mother, hf.da$Height)
m.sd = sd(hf.da$Mother)
d.sd = sd(hf.da$Height)
cor.md = cov.md / (m.sd * d.sd)
cor(hf.da$Mother, hf.da$Height)

par(mfrow=c(1,2))
plot(hf.son$Father, hf.son$Height, main = 'Father vs Son')
plot(hf.da$Mother, hf.da$Height, main = 'Mother vs Daughter')

