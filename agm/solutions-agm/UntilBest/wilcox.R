GEN<- c(0.315011,
0.292563,
0.152137,
0.346999,
0.293735,
0.217064,
0.324217,
0.359478,
0.298479,
0.347054,
0.339532,
0.285106,
0.316272,
0.398524,
0.330904
)

MEM<- c(0.286218,
0.365982,
0.359278,
0.295696,
0.23028,
0.381134,
0.394788,
0.330318,
0.313396,
0.341353,
0.368711,
0.36253,
0.311852,
0.3344,
0.437376
)

result<-wilcox.test(GEN, MEM)
m<-data.frame(result$statistic,result$p.value)
write.csv2(m,file="MM-untilBest.csv")

png(file="boxplot_MM-untilBest.png", width=500, height=500)
boxplot(GEN, MEM, names=c("GENETIC", "MEMETIC"))
dev.off()




   Wilcoxon rank sum test

data:  GEN and MEM
W = 75, p-value = 0.1261
alternative hypothesis: true location shift is not equal to 0