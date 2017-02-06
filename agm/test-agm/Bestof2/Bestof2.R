bestof2 <- read.csv("/home/note/VirtualBox VMs/COMPARTILHADO/2016/Aa0-ORIENTACAO-26/teste-normalidade/bestof2-agm.csv", header=TRUE, sep=";", dec=",")
bf2cm <-bestof2$CM
bf2fm <-bestof2$FM
shapiro.test(bf2cm)
shapiro.test(bf2fm)

bestof12<- read.csv("/home/note/VirtualBox VMs/COMPARTILHADO/2016/Aa0-ORIENTACAO-26/teste-normalidade/bestof12-agm.csv", header=TRUE, sep=";", dec=",")
bf12cm <-bestof12$CM
bf12fm <-bestof12$FM
shapiro.test(bf12cm)
shapiro.test(bf12fm)

genetico <- read.csv("/home/note/VirtualBox VMs/COMPARTILHADO/2016/Aa0-ORIENTACAO-26/teste-normalidade/genetico-agm.csv", header=TRUE, sep=";", dec=",")
gencm <-genetico$CM
genfm <-genetico$FM
shapiro.test(gencm)
shapiro.test(genfm)

mm1<- read.csv("/home/note/VirtualBox VMs/COMPARTILHADO/2016/Aa0-ORIENTACAO-26/teste-normalidade/mm1-agm.csv", header=TRUE, sep=";", dec=",")
mm1cm <-mm1$CM
mm1fm <-mm1$FM
shapiro.test(mm1cm)
shapiro.test(mm1fm)

untilBest<- read.csv("/home/note/VirtualBox VMs/COMPARTILHADO/2016/Aa0-ORIENTACAO-26/teste-normalidade/untilBest-agm.csv", header=TRUE, sep=";", dec=",")
uncm <-untilBest$CM
unfm <-untilBest$FM
shapiro.test(uncm)
shapiro.test(unfm)




