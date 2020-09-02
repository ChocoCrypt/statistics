x <- c()
for(i in 1:100){
    x<- c(x,i) #creamos un vector de 100 elementos
}
#ahora sabemos que el vector tiene un tamaño de 100, si no, podemos definir el tamaño
sumtotal = 0 
tamaño = 100 

for(i in x){
    sumtotal = sumtotal + i
}

med =  sumtotal / tamaño

print(med) #esa es efectivamente la media