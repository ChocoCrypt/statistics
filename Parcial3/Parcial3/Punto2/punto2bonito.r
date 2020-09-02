#punto 2

#este punto lo primero es hacer una regresion lineal simple

x = c(4,0 , 4.2 , 4.5 , 4.7 , 5.1 , 5.5 ,5.9, 6.3 , 3.8 , 7.1)
y = c(102.56, 113.18 ,  130.11 , 142.05 , 167,53 , 195.14 , 224.87 ,256.73 , 299.50 , 326.72)

Ex = sum(x)/10
Ey = sum(y)/10
Sxx = sum(x - Ex)^2
Sxy = sum( (x -Ex)*(y - Ey) )

#ahora podemos hacer la regresion lineal 
B1 = Sxx/Sxy
B0 = sum(y) - (B1* sum(x))


#Punto a 
y = B0 + (B1*x) 
#punto b
sum(bx)

#ahora hay que derivar y encontrar el ajuste cosa que no tengo clara

#y luego hay que hayar R² para saber cual hizo mejor el ajuste es mejor, entre R²mas cercano esté a 1 es mejor 
#sin embargo en el parcial no alcancé a acabar el punto 2, por lo tanto no pude hacer ni el punto 2-c ni el 3




