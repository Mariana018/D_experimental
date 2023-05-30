#Mariana Ortega
#lABORATORIO1
##23/02/2023

#Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular<-300
transporte<-240
comestibles<-1527
gimnasio<-400
alquiler<-1500
otros<-1833
#gastos totales
celular + transporte + comestibles + gimnasio + alquiler + otros

#GASTOS POR MES
5800*5

#GASTOS POR AÑO
5800*10

costos <-c(celular,transporte,comestibles,gimnasio,alquiler,otros)
gastos <-c(celular,transporte,comestibles,gimnasio,alquiler,otros)

barplot(gastos)

nomb <- c("celular", "transporte", "comestibles", "gimnasio", "alquiler", "otros")
#tabla
Gastos <- data.frame(nomb,costos)

barplot(gastos,
        col=c("pink", "red", "green", "blue", "pink", "blue"),
        main="gastos universitarios por mes",
        ylim=c(0,2000), xlab="rubros",
        ylab="costos en mxn",
        names.arg=c("celular", "transporte", "comestibles", "gimnasio", "alquiler", "otros"))

barplot(order(Gastos$costos,decreasing=TRUE), names.arg= Gastos$nomb,
        main="gastos universitarios",
        col=c("pink", "yellow", "red", "brown", "orange", "white"),
        ylim=c(0,2500), xlab="elementos",
        ylab="costos en pesos mexicanos")
