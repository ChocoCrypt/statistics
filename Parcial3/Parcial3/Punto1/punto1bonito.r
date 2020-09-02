#punto 1 bonito :

#el ejercicio nos da los siguientes vectores :
FrecuenciaObservada = c(38, 144 , 342 , 287 , 164 , 25)
FrecuenciaEsperada = c(33.2 , 161.9 , 316.2 , 308.7, 150.7 , 29.4)
Prob = c(0.0332 , 0.1619 , 0.3162 , 0.3087 , 0.1507 ,  0.0294)

#calculamos los valores esperados

Eni = sum(FrecuenciaEsperada)/6
Efrec = sum(FrecuenciaObservada)/6

#chicuadrado:

X2 = sum(( FrecuenciaObservada - Eni )^2 / Eni)

#y ahora ya teniendo los grados de libertad..puedo determinar el p value y evaluarlo.


test = chisq.test(FrecuenciaObservada, FrecuenciaEsperada)
