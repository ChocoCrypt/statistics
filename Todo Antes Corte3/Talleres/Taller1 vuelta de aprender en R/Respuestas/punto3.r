x = c()
y = c()
for(i in 1:5){
    x <- c(x , i + 0.1*i)
    y <- c(y, sin(i))
}
print(y)
print(x)
plot(x,y)