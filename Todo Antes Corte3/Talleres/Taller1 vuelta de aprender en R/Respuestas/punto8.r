importes =  c(23, 33, 25, 45, 10, 28, 39, 27, 15, 38, 34, 29)

totalaño <- function(x){
    total = 0 
    for (i in x){
        total = total + i
    }
    return( total)
}
menormes <- function(x){
    min = 100000
    index = 0
    for(i in 1:length(x)){
        if(x[i]<min){
            min = x[i]
            index = i
        }
    }
    print("el menor mes es el mes ")
    print(index)
    print("y ha gastado")
    print(min)
    return(index)
}
mayormes <- function(x){
    max = 0
    index = 0
    for(i in 1:length(x)){
        if(x[i]>max){
            max = x[i]
            index = i
        }
    }
    print("el mayor mes es el mes ")
    print(index)
    print("y ha gastado")
    print(max)
    return(index)
}
promedio <- function(x){
    sumtotal = 0 
    for (i in 1:length(x)){
        sumtotal =  sumtotal + x[i]
    }
    return(sumtotal / length(x))
}
mesesmayorespromedio <- function(x){
    prom = promedio(x)
    index = 0
    for(i in 1:length(x)){
        if(x[i] > prom){
            print("en este mes la ganancia fue mayor que el promedio")
            print(i)
        }
        
    }
    return(0)
}

#creo esas variables para que no se imprima varias veces la variable que retorné
a = totalaño(importes)
b = menormes(importes)
c = mayormes(importes)
d = mesesmayorespromedio(importes)
