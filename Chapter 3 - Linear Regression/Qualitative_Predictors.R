head(Carseats)
lm.fit <- lm(Sales ~ . + Income:Advertising + Price:Age,
             data = Carseats)
summary(lm.fit)

attach(Carseats)
#Contrasts is used to find out the coding that R used for the qualitative variables
contrasts(ShelveLoc)

