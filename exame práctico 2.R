
library(likert)
library(ggplot2)

data("pisaitems")

#nuevo nombre de la matriz de datos
pisa<-pisaitems

#Exploramos la matriz de datos

names(pisa)
typeof(pisa)
str(pisa)

#valores que componen una variable

head(pisa$CNT)
head(pisa$ST24Q01)

#valores perdidos

anyNA(pisa)

#numero total de datos perdidos en la matriz de datos
sum(is.na(pisa)) 

#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisa2<-na.omit(pisa)

#se comprueba que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#nueva matriz de datos

#------variable 27------

#Agrupamiento de items
names(pisa2)
items27<-pisa2[,25:37] 
head(items27[1:13,1:5])

#Renombramos las etiquetas de respuesta
levels(items27)<-c("Casi nunca",
                   "Algunas veces",
                   "A menudo",
                   "Casi siempre")

# se colocan los nombres a los indicadores

names(items27)<-c("Cuando estudio, trato de memorizar todo
                  que esta cubierto en el texto",
                  "Cuando estudio, empiezo por averiguar que
                   exactamente necesito aprender",
                  "Cuando estudio, trato de memorizar tantos
                   detalles como sea posible",
                  "Cuando estudio, trato de relacionar nueva información
                   a los conocimientos previos adquiridos en otros
                   asignaturas",
                  "Cuando estudio, leo el texto tantas veces
                   que puedo recitarlo",
                  "Cuando estudio, verifico si entiendo lo que
                   han leido",
                  "Cuando estudio, leo el texto una y otra vez
                   de nuevo",
                  "Cuando estudio, descubro cómo
                   la información puede ser útil fuera de la escuela",
                  "Cuando estudio, trato de averiguar qué
                   conceptos que todavía no he entendido",
                  "Cuando estudio, trato de entender el
                   material mejor relacionándolo con el mío
                   experiencias.",
                  "Cuando estudio, me aseguro de recordar
                   los puntos más importantes del texto",
                  "Cuando estudio, descubro cómo el texto
                   la información encaja con lo que sucede en la realidad
                   vida",
                  "Cuando estudio y no entiendo algo, busco informacion adicional
                  para aclarar esto")

l27<-likert(items27)

#Grafico de barras

plot(l27,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
library(plyr)

plot(l27,type="bar",centered=TRUE, plot.percents=TRUE)

#Grafico de barras ordenado
plot(l27,group.order = colnames(items27))

#Grafico de densidad
likert.density.plot(l27,facet=TRUE,bw=0.5, 
                    legend = "Grafico de densidad")

#grafico de calor
plot(l27, type="heat")

#----- Variable 36 -----

#agrupamiento de items

items36<-pisa2[,substr(names(pisa2),1,5)=='ST25Q']

#identificar las respuestas de agrupamiento
#y se genera una nueva variable.

names(items36)<-c("Los estudiantes no escuchanlo que dice el maestro",
                  "Hay ruido y desorden",
                  "El profesor tiene que esperar mucho tiempo para que los estudiantes se callen",
                  "Los estudiantes no pueden trabajar bien",
                  "Los estudiantes no comienzan a trabajar por mucho tiempodespues de que comience la lección")

l36<-likert(items36)

#visualizamos los niveles en los que se agrupan los indicadores
head(l36)

#Se realiza el grÃ¡fico de barras de las respuestas el conjunto.
plot(l36, type="bar", centered=FALSE)

#Grafico de barras con porcentajes

plot(l36,type="bar",centered=TRUE, plot.percents=TRUE)
