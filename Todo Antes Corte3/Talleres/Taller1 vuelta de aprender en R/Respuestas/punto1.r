x  <-  c("x1","x2","x3","x4")
#no se si tenga sentido iniciar el index en 0 o en 1, pero el proposito del script es el mismo

index = 0 
y = c()
for ( i in x){
 y <- c(y ,index)
 index  =  index +1 
}
print(x)
print(y)