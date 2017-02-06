dados <- read.table("/home/note/ANALISE-EXPERIMENTOS-OPLAMEMETIC/agm/testes2/friedman/IGD.csv", head=T, sep=",", dec=".")

Bestof2<-dados$B2
Bestof12<-dados$B12
Genetico<-dados$GN
NoChoice<-dados$NC
UntilBest<-dados$UB

AR1 <-cbind(Genetico, Bestof2, Bestof12, NoChoice, UntilBest)
result<-friedman.test(AR1)
result
