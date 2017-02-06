dados <- read.table("/home/note/ANALISE-EXPERIMENTOS-OPLAMEMETIC/bet/testes2/friedman/IGD.csv", head=T, sep=",", dec=".")

Bestof2<-dados$B2
Genetico<-dados$GN
NoChoice<-dados$NC

AR1 <-cbind(Genetico, Bestof2, NoChoice)
result<-friedman.test(AR1)
result
