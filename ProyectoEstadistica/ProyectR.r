install.packages('bbmle')
library(bbmle)
setwd('.')
df=read.table('datos.txt',sep=',',header=TRUE)
#df = read.csv("datos.txt" , sep = ',' , header =  FALSE)
colnames(df)

wye=df[,c(colnames(df[2:4]))]
#wye$sex=0.5
boys=df[,c(colnames(df[5:7]))]
boys$sex=1
girls=df[,c(colnames(df[8:10]))]
girls$sex=0
boys$t=seq.int(nrow(boys))
girls$t=seq.int(nrow(girls))
wye$t=seq.int(nrow(wye))

LL <- function(beta0, beta1, beta2) {

   	k=exp(beta0 + beta1 * sin((2*pi*wye$t)/12) + beta2*cos((2*pi*wye$t)/12))
	R=(wye$WE_Prevalence/100000)-((k)/(1+k))
	sum(abs(R))
    #R retorna la suma de los rs que es lo que estoy intentando minimizar
}


Rsol=mle2(LL,start=list(beta0=-5,beta1=0.5,beta2=0.5))
Rsol
#estos valores iniciales es para que el algoritmo converja rapido , los hubiera podido poner en lo que quisiera pero quien sabe si converja y ademas no se sabe que metodo usaron los manes del paper para que el metdoo de maxima verosimilitud converijera
#Rsol 	
#Graficas
kplot=exp( -5 + 0.5 * sin((2*pi*wye$t)/12) + 0.5*cos((2*pi*wye$t)/12))
estimacionajuste = (kplot / (1 + kplot))
plot(estimacionajuste)
puntos = wye$WE_Prevalence
plot(puntos)
plot(kplot)


#cosas que debo graficar
#graficar la columna WE_prevalence
#graficar el resultado de 
#k=exp(beta0 + beta1 * sin((2*pi*wye$t)/12) + beta2*cos((2*pi*wye$t)/12))
#grafica estor((k)/(1+k))

#hacerlo de la otra forma tambienc
