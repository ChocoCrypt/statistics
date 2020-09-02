x <- c()
for(i in 1:100){
    x<- c(x,i) #partimos del punto 6
}
sumtotal = 0 
tamaño = 100 

for(i in x){
    sumtotal = sumtotal + i
}

med =  sumtotal / tamaño

##ahora vamos a usar los operadores para calcular x al cuadrado

x2 = (x**2)
#ahora le vamos a calcular la media de la misma manera

sumtotal2 = 0
for(i in x2){
    sumtotal2 =  sumtotal2 + i
}
med2 =  sumtotal2/tamaño

#ahora la varianza es un calculo facil

var = med2 - (med * med) 

print(var)
#$var(x)=\bar{x^2}-(\bar{x})^2$ 