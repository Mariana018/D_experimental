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

