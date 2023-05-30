##MarianaOrtega
#Jueves25

setwd("C:/RepositorioGitt/D_Experimental/Scripts/")

germ <- read.csv("pregerminacion.csv", header = TRUE)

germ$Tratamiento <- as.factor(germ$Tratamiento)

##GRAFICA

boxplot(germ$PG ~ germ$Tratamiento, 
        col="pink",
        xlab = "Tratamiento Germinativo", 
        ylab = " % GERMINACION")

##Ordenar los tratamientos

levels(germ$Tratamiento)

germ$Tratamiento <- factor(germ$Tratamiento, levels=c("CONTROL", "Em", "AgAm", "AgCal", "H2SO4"))
levels(germ$Tratamiento)

tapply(germ$PG, germ$Tratamiento, mean)
tapply(germ$PG, germ$Tratamiento, var)


##ANOVA


germ.aov <- aov(germ$PG ~ germ$Tratamiento)
summary(germ.aov)


#PRUEBA DE TUCKEY
#EN ANOVA - TUCJEY comparar trat y cual es diferente de quien

TukeyHSD(germ.aov, conf.level = 0.95)

##Entre Em- Ctrl diferencia de 4% y si existe dif
##Entre AgAm- Ctrl diferencia de 5 % y si existe dif
##Entre AgCal - Ctrl diferencia de 3.5 % y si existe dif

plot(TukeyHSD(germ.aov), las =1, col="orange")

#Agregar letras de diferencia

boxplot(germ$PG ~ germ$Tratamiento,
        col="pink",
        xlab = "Tratamiento Germinativo",
        ylab = " % GERMINACION",
        ylim=c(0,10))
text(1,4.2, "a", col="green")
text(2,8.3, "b", col="orange")
text(3,9.4, "b", col="green")
text(4,7.4, "b", col="red")
text(5,3.3, "a", col="orange")
