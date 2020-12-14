#AnÃ¡lisis de datos en scala Likert

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data

data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos

pisa<-pisaitems

#Exploramos la matriz de datos
names(pisa)
typeof(pisa)
str(pisa)


#se visualizan los valores que componen una variable
head(pisa$CNT)
head(pisa$ST24Q01)

#se buscan los valores perdidos
anyNA(pisa)

#numero total de datos perdidos en la matriz de datos
sum(is.na(pisa)) 

#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisa2<-na.omit(pisa)

#se comprueba que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#Empezamos a trabajar con la nueva matriz de datos


#--------VARIABLE 24--------
#Agrupamiento de items
names(pisa2)
items24<-pisa2[,2:12] 
head(items24[1:6,1:6])

#Renombramos las etiquetas de respuesta
levels(items24)<-c("Completamente en desacuerdo",
                   "En desacuerdo",
                   "De acuerdo",
                   "Completamente de acuerdo")

# se colocan los nombres a los indicadores

names(items24)<-c("Leo si es necesario",
                  "Leer es de mis pasatiempos favoritos",
                  "Me gusta hablar de libros con otras personas",
                  "Encuento dificil terminar un libro",
                  "Me siento feliz sÃ­ recibo un libro como regalo",
                  "Para mi, leer es una pÃ©rdida de tiempo",
                  "Disfruto ir a una librerÃ­a o bilioteca",
                  "Leo sÃ³lo para obtener la informaciÃ³n que necesito",
                  "No puedo estar sentado leyendo por mÃ¡s de 5 minutos",
                  "Me gusta expresar mi opinion sobre un libro cuando lo he leido",
                  "Me gusta intercambiar libros con mis amigas-os")


l24<-likert(items24)

#Grafico de barras

plot(l24,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l24,type="bar",centered=TRUE, plot.percents=TRUE)


#Grafico de barras ordenado
plot(l24,group.order = colnames(items24))

#Grafico de densidad
likert.density.plot(l24,facet=TRUE,bw=0.5, 
                    legend = "Grafico de densidad")

#grafico de calor
plot(l24, type="heat")

#----- Variable 25-----

#agrupamiento de items
items25<-pisa2[,substr(names(pisa2),1,5)=='ST25Q']


#identificar las respuestas de agrupamiento
#y se genera una nueva variable.
names(items25)<-c("Magazines","Comics books","Fiction",
                  "Non-Fiction books","Newspapers")

l25<-likert(items25)

#visualizamos los niveles en los que se agrupan los indicadores
head(l25)

#Se realiza el grÃ¡fico de barras de las respuestas el conjunto.
plot(l25, type="bar", centered=FALSE)

#Grafico de barras con porcentajes


plot(l25,type="bar",centered=TRUE, plot.percents=TRUE)

