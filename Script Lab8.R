####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por _________________________________________________________________________

# LABORATORIO - RELACIONAMIENTO "CASO HIPOTÉTICO" 

# Objetivo: Estimar el relacionamiento (relatedness, proximidad, métrica de distancia entre productos)
# ------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar nuestra matriz hipotética de datos
# 2. Calcular co ocurrencias entre personas y productos 
# 3. Estimar el relacionamiento, teniendo como input las co ocurrencias
# 4. Graficar

#######################################
#LABORATORIO: Relacionamiento (r)     #
#######################################

#---------LABORATORIO NÚMERO 8---------

library (EconGeo)

# 1.Cómo se mide la proximidad (relatedness) para crear el espacio producto
# Material: Balland, P.A. (2017) Economic Geography in R: Introduction to the EconGeo Package, Papers in Evolutionary Economic Geography, 17 (09): 1-75 
# Para instalar: https://www.paballand.com/install-r

#INSTALACIONES
install.packages ("igraph")
install.packages(“visNetwork”)
install.packages(“htmlwidgets”)
install.packages(“igraph”)
install.packages(“reforma”)
install.packages(“Matrix”)
install.packages(“RSiena”)
install. paquetes(“networkD3”)
install.packages(“curl”)
install.packages(“devtools”)
biblioteca(devtools)
devtools::install_github(“PABalland/EconGeo”, force = T)

#Ya que están instaladas, se corre el comando library
library(EconGeo)

#Importamos una matriz
#Archivo en cvs, separados por comas
#La fila inicial tiene los títulos T (Titles)
#La primera columna tendrá el nombre de las variables
#Se selecciona desde la M hasta los últimos dos paréntesis después del 1
M = as.matrix(
  read.csv("https://raw.githubusercontent.com/PABalland/ON/master/amz.csv" , 
           sep = ",", 
           header = T, 
           row.names = 1))

#Para ver la matriz, ejecutar M
M

#En la consola (ventana de abajo) se puede ver la matriz creada
#La primera columna se muestran los nombres de los participantes
#En los renglones se tienen los productos

#Cálculo de co-ocurrencias (cuántos empates de compra entre participantes)
co.occurrence (M)
# co-ocurrencia entre personas/paises/estados

#cálculo de co-ocurrencias de la matriz transpuesta para enfocarse en productos
c = co.occurrence (t(M))
# co-ocurrencia entre productos t es transpuesta

#Para visualizar c
c

# estima el relacionamiento o proximidad pero normalizado, para asegurar que el número de co ocurrencias que observamos
# es mayor al número de co ocurrencias probables (probabilidad condicional)
r = relatedness (c)
#Para estimar el relacionamiento

#Para ver el resultado, corremos r
r
#tie and Surfboard puede que no esten tan relacionados, abajo de  1 no es relacionado mientras que mayor a 1 si es relacionado






library (igraph)
