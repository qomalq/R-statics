## 적합도 검정
# 멘댈의 유전 법칙
x = c(315,108,101,32)
chisq.test(x, p=c(9,3,3,1)/16)

# 동질성 검정
# 연령대별 sns 이용율
sns = read.csv('data/snsbyage.csv', stringsAsFactors = F)
sns$age = factor(sns$age, levels = c(1,2,3), labels = c('20대','30대','40대'))
sns$service = factor(sns$service, levels = c('F','T','K','C','E'),ordered = T)
sns.tab = table(sns$age, sns$service)
sns.tab

ct.info =chisq.test(sns.tab)
ct.info$p.value
chi.sum = 0
for (i in 1:3) {
    for (k in 1:5) {
        chi.sum = chi.sum + (ct.info$observed[i,k]-ct.info$expected[i,k])^2/(ct.info$expected[i,k])
    }
}
1- pchisq(chi.sum, df=8)


### 독립성 검정
data("UCBAdmissions")
UCBAdmissions
length(UCBAdmissions)
ucba.tab = apply(UCBAdmissions, c(1,2), sum)
chisq.test(ucba.tab)
