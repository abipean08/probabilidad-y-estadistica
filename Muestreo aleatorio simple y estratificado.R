
#generar numero aleatorios para una muestra de 35 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV

sample(x, side, replace=True/FALSE)

#Ejemplo
sample(1:73,35, replace = FALSE)
sample(1:70,34, replace=FALSE)


#Ejercicios

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

sample(1:83,56, replace = FALSE)

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

muestra1 <- c(34,83,72,77,57,20,50,49,22,52,60,74,16,51,17,61,78,59,62,6,32,75,46,14,82,58,1,44,56,73,69,9,27,43,8,54,80,13,42,18,5,24,28,33,36,11,29,47,26,79,2,10,41,66,68,55)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

sample(1:90,59, replace = FALSE)

muestra2 <- c(47,52,58,89,23,73,7,42,22,70,2,88,56,4,27,59,32,57,81,71,54,45,61,9,40,65,64,83,67,49,26,37,1,90,34,69,79,30,3,10,17,62,43,18,13,77,41,20,75,63,6,38,16,74,19,53,44,66,24)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.

sample(1:78,54, replace = FALSE)

#Preescolar: 84 personas egresadas.

sample(1:84,57, replace = FALSE)

#Física: 35 personas egresadas.

sample(1:35,29, replace = FALSE)

#Telesecundaria: 83 personas egresadas.

sample(1:83,55, replace = FALSE)

#Especial: 25 personas.

sample(1:25,23, replace = FALSE)
