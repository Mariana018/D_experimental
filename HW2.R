#MARIANA ORTEGA 
#HW2

conjuntos <- read.csv("Scripts/Alturas.CSV", header = TRUE)
#Seleccion de datos
mean(conjuntos$ALTURA)

#ALTURA MENOR O IGUAL QUE LA MEDIA
H.media <-subset(conjuntos, conjuntos$ALTURA <= 14)
#Altura menor a 16.5
H.16 <-subset(conjuntos, conjuntos$ALTURA <= 16.5)

#Vecinos
VECINOS_3 <-subset(conjuntos, conjuntos$VECINOS <=3)

VECINOS_4 <- subset(conjuntos, conjuntos$VECINOS >=4)

#diamtro
mean(conjuntos$DIAMETRO)
DBH_media <-subset(conjuntos, conjuntos$DIAMETRO <15.79) ##VALOR DE LA MEDIA DEL DIAMETRO                    

#ESPECIE
DBH_16 <-subset(conjuntos, conjuntos$DIAMETRO >15.79)

conjuntos$ESPECIE <- as.factor(conjuntos$ESPECIE)

cedro <-subset(conjuntos, conjuntos$ESPECIE == "C")
esp_2 <-subset(conjuntos, conjuntos$ESPECIE == "F")

##cuantas observaciones son menores o iguales a 16.9 cm de Diametro
sum(conjuntos$ALTURA >18.5)

#Visualizacion de datos
##alturas
head(conjuntos$ALTURA)

hist(conjuntos$ALTURA,
     main = "Altura de especies",
     xlab = "ALTURA",
     ylab = "Frecuencia",
     col = "blue")

feeds <- table(conjuntos$ALTURA)
feeds
barplot(feeds)

hist(H.media$ALTURA)

hist(H.16$ALTURA)
##Vecinos

hist(conjuntos$VECINOS,
     main = "vecinos",
     col = "yellow")

hist(VECINOS_3$VECINOS)
hist(VECINOS_4$VECINOS)

#diametro

hist(conjuntos$DIAMETRO,
     main = "DIAMETRO",
     col = "pink")
hist(DBH_16$DIAMETRO)
hist(DBH_media$DIAMETRO)

#Estadisticas Basicas

mean(conjuntos$ALTURA)
sd(conjuntos$ALTURA)

mean(H.media$ALTURA)
sd(H.media$ALTURA)

mean(H.16$ALTURA)
sd(H.16$ALTURA)

mean(conjuntos$VECINOS)
sd(conjuntos$VECINOS)

mean(VECINOS_3$VECINOS)
sd(VECINOS_3$VECINOS)

mean(VECINOS_4$VECINOS)
sd(VECINOS_4$VECINOS)


mean(conjuntos$DIAMETRO)
sd(conjuntos$DIAMETRO)


mean(DBH_16$DIAMETRO)
sd(DBH_16$DIAMETRO)

mean(DBH_media$DIAMETRO)
sd(DBH_media$DIAMETRO)

##LINEAS DE COMANDO EN R

head(conjuntos)
