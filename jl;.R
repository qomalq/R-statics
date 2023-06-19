install.packages(rsq)
library(rsq)

data(swiss)
head(swiss,1)
lm1 = lm(Fertility~., data = swiss)
lm2 = lm(Fertility~Agriculture, data = swiss)
rsq(lm1)
rsq(lm2)
sst =rsq(lm1, adj = T)
sse =rsq(lm2, adj = T)

