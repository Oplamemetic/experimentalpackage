Bestof2<-c(3.600957101,
5.390371327,
6.326574773,
8.246205654,
14.8431004,
15.60573594,
17.02036143,
)

Bestof12<-c(5.652950193,
7.21108975,
8.938568672,
32.30580055
)

Genetico<-c(1.986023077,
2.241773485,
8.94426159,
9.43060292,
12.99787674,
19.69204318,
26.82656797
)

MM1<-c(2.230366107,
7.214641782,
9.43060292,
25.29093319,
29.14289321
)

UntilBest<-c(5.38311603,
7.28010355,
8.594208871,
9.43060292,
20.61553373,
25.29093319
)

require('pgirmess')
AR1 <-cbind(Bestof2, Bestof12, Genetico, MM1, UntilBest)
result<-friedman.test(AR1)
result

m<-data.frame(result$statistic,result$p.value)
write.csv2(m,file="friedman-pvalue-ed-mom.csv")

pos_teste<-friedmanmc(AR1)
write.csv2(pos_teste,file="friedman-comparacao-ed-mom.csv")
png(file="friedman-ed-mom.png", width=500, height=500)
boxplot(Bestof2, Bestof12, Genetico, MM1, UntilBest)
dev.off()



