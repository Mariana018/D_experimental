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

#Laboratorio3
#Mariana2017439
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

head(conjunto)

library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)


#PARTE2_Operaciones con la base de datos
raw_url <- "https://raw.githubusercontent.com/Mariana018/D_experimental/main/cuadro1.csv"

mean(inventario$Diametro)

sd(inventario$Diametro)

#Selección mediante restricciones

sum(inventario$Diametro < 10)
which(inventario$Diametro < 10)

#Excluir los diametros
inventario$Especie <- as.factor(inventario$Especie)
inventario$Clase <- as.factor(inventario$Clase)
inventario$Especie <- as.factor(inventario$Especie)

inventario.13 <- inventario[!(inventario$Especie=="I"),]
inventario.13

inventario.1 <- subset(inventario, Diametro <= 10)
head(inventario.1)

mean(inventario$Diametro)
mean(inventario.1$Diametro)

#PARTE3_Representacion grafica

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")

hist(mamiferos$total_sleep)
hist(mamiferos$total_sleep,
     xlim = c(0,20), ylim = c(0,14),
     main = "Total de horas sueño de las 39 especies",
     xlab = "Horas sueño",
     ylab = "Frecuencia",
     las= 1,
     col = "#996600")

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64),])

feeds <- table(chickwts$feed)
feeds

barplot(feeds)

barplot(feeds[order(feeds, decreasing = TRUE)])

#Yaretzy Mariana Ortega Martinez
