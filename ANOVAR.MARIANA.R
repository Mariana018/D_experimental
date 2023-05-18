##MarianaOrtega
#ANOVA
##18/05/23

#Experimento ganancia en peso (GP) basado en dieferentes dietas 
#Nivel de factor: 4 (die1, die2, die3, die4)

die1 <- c(2.4, 2.2, 3.4, 1.6)
die2 <- c(2.2, 1.9, 1.7, 2.1)
die3 <- c(3.3, 1.3, 2.8, 2.1)
die4 <- c(1.6, 2.5, 1.4, 2.4)


GP <- c(2.4, 2.2, 3.4, 1.6, 2.2, 1.9, 1.7, 2.1,
        3.3, 1.3, 2.8, 2.1, 1.6, 2.5, 1.4, 2.4)
Trat <- gl(4,4,16, labels = c("die1", "die2", "die3", "die4"))
Bloq <- gl(4,4,16, labels = c("Bjao", "Normal", "SP", "OB"))

Dietas <- data.frame(Trat, Bloq, GP)

boxplot(Dietas$GP ~ Dietas$Trat,
        col="yellow",
        xlab = "Dietas",
        ylab = "Ganancia en peso (Kg)")

tapply(Dietas$GP, Dietas$Trat, mean)
tapply(Dietas$GP, Dietas$Trat, sum)
tapply(Dietas$GP, Dietas$Trat, var)

fligner.test(Dietas$GP, Dietas$Trat)
bartlett.test(Dietas$GP, Dietas$Trat)

diet.aov <- aov(Dietas$GP ~ Dietas$Trat)
summary(diet.aov)

write.table(Dietas, "C:/RepositorioGitt/D_Experimental/Scripts/Dietas.csv",
            sep = ",")

Dieta2 <- read.csv("Scripts/Dietas.csv", header = TRUE)
Dietas2$Trat <- as.factor(Dieta2$Trat)
Dieta2$Bloq <- as.factor(Dieta2$Bloq)

Di2.aov <- aov(Dieta2$FP ~ Dietas2$Trat + Dieta2$Bloq)
summary(Di2.aov)