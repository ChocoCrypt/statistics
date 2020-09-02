set.seed(2016)
(dado <- sample(1:6 , size= 40 , replace = TRUE))
sort(dado)

ni = table(dado)
fi = table(dado)/length(dado)
Ni = cumsum(ni)
Fi = cumsum(fi)
Tabla_Frec = cbind(ni,fi,Ni,Fi); Tabla_Frec

##punto 2

par(mfrow = c(2,2))
barplot(ni)
pie(ni)

#punto 3 

m =  mean(dado)
med = median(dado)
ni = sort(ni,decreasing = TRUE)
mod = names(ni[1])#hay varias modas

#punto 4
print("media")
print(mean(dado))
print("mediana")
print(median(dado))
print("una moda")
print(mod)

#punto 5


(v<-c(0,sample(1:6,size=40,replace=TRUE),12,20))
#separo el vector en 4 
l1 = quantile(v,0.25)
l2 = quantile(v,0.50)
l3 = quantile(v,0.75)
l4 = quantile(v,1)

#punto 6 y 7

#hay muchas definiciones de varianza, voy a elegir la que estaba en el taller anterior
mivar = (1/(length(dado)-1))*sum((dado-mean(dado))^2)
varcorrecta = var(dado)
if(mivar == varcorrecta){
    print("melo")
}

#punto 8 y 9

desviacion = sqrt(var(dado))
if(desviacion == sd(dado)){
    print("breve el punto 8 y 9")
}






