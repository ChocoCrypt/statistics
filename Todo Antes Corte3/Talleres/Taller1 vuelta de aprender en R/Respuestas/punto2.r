x<-c(2, 5, 120, 5, 8, 11)
#pues la solución obvia es crear otro vector y reemplazarlo, pero esto crearia otro espacio de memoria
x[5] = 7
x[6] =  8
x[7] = 11
x[8] = 3
x[3] = 12
print(x)
