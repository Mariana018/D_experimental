##Mariana_11/05/2023
#t-test dependientes

setwd("C:/RepositorioGitt/D_Experimental/Scripts/")

semilla <- read.csv("mainproduccion.csv", header = T)

semilla$Tiempo <- as.factor(semilla$Tiempo)

##GRAFICA BOXPLOT

semilla$Kgsem <- as.factor(semilla$Kgsem)
boxplot(semilla$Tiempo ~ semilla$Kgsem)
boxplot(semilla$Tiempo)

boxplot(Kgsem$semilla)

boxplot(semilla$Tiempo ~ semilla$Kgsem)

boxplot(semilla$BioRama, semilla$Tiempo)

boxplot(semilla$Kgsem)

t.test(semilla$Kgsem ~ semilla$Tiempo, paired = TRUE)
t.test(semilla$Germ ~ semilla$Tiempo, paired = TRUE)
t.test(semilla$BioRama ~ semilla$Tiempo, paired = TRUE)
