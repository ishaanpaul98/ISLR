#install.packages('ISLR2')
library(ISLR2)
attach(Wage)
fit <- lm(wage ∼ poly(age , 4), data = Wage)
