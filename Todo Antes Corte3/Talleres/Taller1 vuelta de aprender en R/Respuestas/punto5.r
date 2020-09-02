x<-c(1, 3, 5, 7, 9) 
y<-c(2, 3, 5, 7, 11) ##modifique el vector para poderlos sumar

print(x)
print(x+1)# le suma 1 a todos elementos del vector
print("*****************")
print(y)
print(y*2)#multiplica por 2 todos los elementos del vector
print(x+y)#los suma
print("*****************")
print(sum(x>5))
#la funcion sum hace la sumatoria de todos los x que son mayores que 5

print("*****************")

print(sum(x[x>5])) #ahora lo hace dentro del conjunto, y en las siguientes instrucciones lo hace tambien con operadores logicos

print(sum(x[x>5 | x>3]))
print(y[y>7])