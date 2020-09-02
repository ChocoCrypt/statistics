x = c(8.6 , 6.10 , 8.14 , 14.12 , 16.12)
y = c(8,12,16,20,24)


sxx = sum((x-mean(x)) *(x-mean(x)))
sxy = sum((x-mean(x))* ( y - mean(y)))
syy = sum((y -mean(y)) ^2)

B1 = sxy/sxx 
B0 = mean(y) - (B1*mean(x))
sse =  syy-B1 *sxy
  
y = B0 + B1*x 

plot(x,y)
plot(y)


vecy = c(8.6 , 6.10 , 8.14 , 14.12 , 16.12 )
vecx = c(8,12,16,20,24)

S2 = var(vecy)
S2TRANS = sse / 3

t = (B1 - 0 )/(sqrt(S2TRANS ) * sqrt(1/sxx)) #no se puede afirmar que es mayor que 1 pero si que es positiva la pendiente

valorp = pt(t,3,lower.tail= FALSE  )

talpha = qt(valorp, 3 , lower.tail =  FALSE )

