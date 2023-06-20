#### 다중 선형회귀
View(state.x77)
states = as.data.frame(state.x77[,c('Murder','Population','Illiteracy','Income','Frost')])
head(states)

fit = lm(Murder~.,data = states)
summary(fit)
par(mfrow=c(2,2))
plot(fit)

states.cor = cor(states[2:5])
states.cor

fit1 = lm(Murder~.,data = states)
summary(fit1)
fit2 = lm(Murder~Population+Illiteracy,data = states)
summary(fit2)

fit3 = lm(Murder~.,data = states)
AIC(fit1, fit2)

par(mfrow=c(1,1))
