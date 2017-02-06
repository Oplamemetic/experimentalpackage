Bestof2<-c(126,
17
)

Bestof12<-c(
106.212052,
17.20465053,
41
)

Genetico<-c(
0
)

MM1<-c(
82.56512581,
12
)

UntilBest<-c(
106.212052,
37.69615365,
68.26419266,
23
)

require('pgirmess')
AR1 <-cbind(Bestof2, Bestof12, Genetico, MM1, UntilBest)
result<-friedman.test(AR1)
result
m<-data.frame(result$statistic,result$p.value)
write.csv2(m,file="friedman-pvalue-ed-bank.csv")

pos_teste<-friedmanmc(AR1)
write.csv2(pos_teste,file="friedman-comparacao-ed-bank.csv")
png(file="friedman-ed-bank.png", width=500, height=500)
boxplot(Bestof2, Bestof12, Genetico, MM1, UntilBest)
dev.off()



