dados <- read.table("/home/note/ANALISE-EXPERIMENTOS-OPLAMEMETIC/bank/testes2/friedman/ED.csv", head=T, sep=",", dec=".")

Bestof2<-c(14.0,
           128.01562404644207,
           136.0
)
Bestof12<-c(36.61966684720111,
            128.01562404644207,
            136.0,
            86.14522621712709
)
Genetico<-c(149.6562728387955
)
NoChoice<-c(54.08326913195984,
            114.85643212288984,
            148.0
)
UntilBest<-c(36.61966684720111,
             149.6562728387955,
             151.0132444522665,
             161.0,
             61.35144660071187
)

Bestof2
Bestof12
Genetico
NoChoice
UntilBest

AR1 <-cbind(Genetico, Bestof2, Bestof12, NoChoice, UntilBest)
result<-friedman.test(AR1)
result

boxplot(Genetico, Bestof2, Bestof12, NoChoice, UntilBest, names=c("Genetico", "Bestof2", "Bestof12", "NoChoice", "UntilBest"))
