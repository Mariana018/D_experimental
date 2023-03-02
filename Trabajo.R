#Laboratorio2
#2017439_Mariana

#01/03/2023

# funcion de read.csv

Viveros <- read.csv("Scripts/BD1_Viveros.csv", header = TRUE)
# CONVERTIR TRATAMIENTO A FACTOR

Viveros$Tratamiento <- as.factor(Viveros$Tratamiento)

summary(Viveros)
sd(Viveros$IE)
var(Viveros$IE)
mean(Viveros$IE)
#Importar datos
prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)


summary(profepa)
profepa$Operativo == max(profepa$Operativo)

prof.soc <- subset(profepa, profepa$Operativo != max(profepa$Operativo))

boxplot(prof.soc$Operativo)
boxplot(prof.soc$Recorrido)
prof_url2 <- paste0("http://www.profepa.gob.mx/innovaportal/","file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url2)
summary(profepa2)
summary(profepa)

library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")


boxplot(diametro)
boxplot(conjunto$Diametro)


conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase)
boxplot(conjunto$Diametro - conjunto$Especie)
boxplot(conjunto$Diametro ~ conjunto$Especie,
        col="lightgreen",
        xlab ="Especie",
        ylab ="Diametro",
        main="Bosque obscuro")



boxplot(conjunto$Altura ~ conjunto$Especie,
        col="lightgreen",
        xlab ="Especie",
        ylab ="Diametro",
        main="Bosque obscuro")

