#Sandra berenice Valdes Platas 
# 1873490
#26.02.20


# Importar datos ----------------------------------------------------------


Historico <- read.csv("Historico.csv", header = TRUE)
summary(Historico)

#¿cual es la mecia del numero de incencidos?
mean(Historico$Numero.de.incendios)

#¿cual es la media de la superficie quemada en los años indicados?
mean(Historico$A.o)

#¿Cual es el valor donde se ubica del tercer cuartil 75% de los datos para la variable numero de incendios?
fivenum(Historico$Numero.de.incendios)

#¿Cual es el valor donde se ubica del primer cuartil 25% de los datos para la variable Superficie?
fivenum(Historico$Superficie)

#Desviacion estandar para variable Superficie
sd(Historico$Superficie)

#Realiza una grafica histograma (2,1) con las variables: numero de incendios y superficie en hectareas quemadas 
par(mfrow=c(1,2))
hist(Historico$Numero.de.incendios, xlab = "Numero de incendios", ylab= "Frecuencia", main = "numero de incendios", col="red")
hist(Historico$Superficie, xlab = "Hectareas quemadas", ylab= "Frecuencia",main = "superficie hectareas quemadas", col = "blue" )
par(mfrow=c(1,1))

#¿mediante la funcion bloxplot para el numero de incendios, revise si existen outlires
boxplot(Historico$Numero.de.incendios, col = "Pink")

#mediante la funcion bloxplot para la superficie, revise si existen outlires
boxplot(Historico$Superficie, col = "green")


