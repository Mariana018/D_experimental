##Mariana Ortega
##22 febrero 2023

#HW_01

#Investigador realizo un inventario
Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200
Juniperos <- 720
superficie <- c(Pinus, Mezquite, Encinos, Teka, Juniperos)

 #Funcion barplot
 
 barplot(superficie,
         col = "pink",
         ylab = "SUPERFICIE",
         xlab = "Especie")
 sort(superficie)
mean(superficie) 

#Problema 2
#UN TECNICO EXAMINA

germinacion <- c(4, 1, 6, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4, 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2)
mean(germinacion)
sd(germinacion)


#Probelma 3

#Viverista mide altura

alturas <- c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12, 20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)
mean(alturas)
sd(alturas)
