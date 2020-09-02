library(MASS)
data("Boston")
attach((Boston))

model = lm(medv ~ age)

summary(model)


#como r² es muy bajo se puede decir que no hay relación o es muy débil
#como el coeficiente b1 = -0.12 la relación es negativa