Bestof2<-c(0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0,
0
)

Bestof12<-c(0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.356522,
0.000000,
0.000000,
0.000000
)

Genetico<-c(0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000,
0.000000
)

MM1<-c(0.0863309,
0.2340426,
1.0000000,
0.2340426,
0.2340426,
1.0000000,
0.2340426,
0.2340426,
1.0000000,
1.0000000,
1.0000000,
1.0000000,
0.2340426,
0.2340426,
1.0000000
)

UntilBest<-c(1.9166667,
1.9166667,
1.9166667,
1.9166667,
1.9166667,
1.9166667,
1.9166667,
1.9166667,
1.9166667,
1.9166667,
1.9219832,
1.9166667,
0.1642857,
1.9166667,
11.5000000
)

require('pgirmess')
AR1 <-cbind(Bestof2, Bestof12, Genetico, MM1, UntilBest)
result<-friedman.test(AR1)
result
m<-data.frame(result$statistic,result$p.value)
write.csv2(m,file="friedman-pvalue-gd-agm.csv")

pos_teste<-friedmanmc(AR1)
write.csv2(pos_teste,file="friedman-comparacao-gd-agm.csv")
png(file="friedman-gd-agm.png", width=500, height=500)
boxplot(Bestof2, Bestof12, Genetico, MM1, UntilBest)
dev.off()



