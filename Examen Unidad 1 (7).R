#Examinación de la unidad 1, inserta el código para
#activar lo que se te indica. Guarda tu script y envíalo
#por classroom antes del martes.
#Importante: En caso de detectar plagio, se te anulará
#el apartado correspondiente.


#Vas a trabajar con la matriz de datos
#"millas" que se te proporciona a continuación.

millas<-datos::millas

#Realizar los siguientes pasos:


#1.- Explora la matriz de datos millas 
#valor: 5 puntos por comando correcto.

?millas  #ayuda
dim(millas)#dimension
names(millas)#nombre de las variables
str(millas)#tipo de variable
anyNA(millas)#me indica los datos perdidoss
typeof(millas)#tipo de matriz de datos
View(millas)#visualizacion de la tabla  (data frame)

millas_17<-as.data.frame (millas)

install.packages("modeest")
library(modeest)

#se calcula la moda de cada una de las variables
summary(millas_17)

#se utiliza mfv()

mfv(millas_17$fabricante)
mfv(millas_17$modelo)
mfv(millas_17$cilindrada)
mfv(millas_17$anio)
mfv(millas_17$cilindros)
mfv(millas_17$transmision)
mfv(millas_17$traccion)
mfv(millas_17$ciudad)
mfv(millas_17$autopista)
mfv(millas_17$combustible)
mfv(millas_17$clase)

#calculamos la varianza de cada una de las variables
#con var()
#solo las cuantitativas

var(millas_17$cilindrada)
var(millas_17$anio)
var(millas_17$cilindros)
var(millas_17$ciudad)
var(millas_17$autopista)

#calcularemos la desviacion standar para cada una de las
#con sd()
#variables cuantitativas

sd(millas_17$cilindrada)
sd(millas_17$anio)
sd(millas_17$cilindros)
sd(millas_17$ciudad)
sd(millas_17$autopista)

#calcularesmos el coeficiente de variacion

library<-(FinCal)

coefficient.variation( sd = sd (millas_17$cilindrada),
                       avg = mean (millas_17$cilindrada))

coefficient.variation( sd = sd (millas_17$anio),
                       avg = mean (millas_17$anio))

coefficient.variation( sd = sd (millas_17$cilindros),
                       avg = mean (millas_17$cilindros))

coefficient.variation( sd = sd (millas_17$ciudad),
                       avg = mean (millas_17$ciudad))

coefficient.variation( sd = sd (millas_17$autopista),
                       avg = mean (millas_17$autopista))

#2.- Determina las medidas estadísticas descriptivas
#y de variablidad
#Importante: no calcules los errores.
#Valor: 5 puntos por comando correcto.

library(tidyverse)


#3.- Construye:

#A) Un gráfico de dispersión con las variables cilindrada y autopista
    #el color lo indica la variable clase. 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).

dispersion_1 <- ggplot ( millas_17 , aes (x=cilindrada, y=autopista, color=clase)) +
  geom_point()

#visualizamos el grafico
dispersion_1

#B) Un gráfico boxplot con las variables transmisión y ciudad
    #El color lo indica la variable transmisión    
    #El título del gráfico es Transmisión de autos en ciudad
    #Coloca la etiqueta "Transmisión" en el eje x 
    #Coloca la etiqueta "Ciudad" en el eje y 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico del gráfico).

boxplot <- ggplot( millas_17 ,aes(factor(transmision),
                                 ciudad, fill=transmision)) +
  geom_boxplot()+
  ggtitle ( "Transmision de autos en ciudad" ) +
  xlab ( "Transmision" ) +
  ylab ( "Ciudad" )

#visualizamos el grafico
boxplot


#C) Un gráfico de barras para la variable "cilindros" 
    #Valor Total: 20 puntos
    #(10 puntos por comando activado correcto).
    #(10 punto por la generación del gráfico).

#construccion de lo que vamos a trabajar
attach(millas_17)

tabla_1<- table(millas_17$cilindros)

#visualizamos la variable x
tabla_1

#especificamos la paleta de colores que se van a utilizar

color=c ("cyan","firebrick1","gold1","darkslategray3")

barplot(tabla_1, xlab ="cilindros", ylab = "Frecuencias",
        main ="Grafico de barras de cilindros", col= color)
