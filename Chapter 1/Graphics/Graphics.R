#Creating x and y variables for a plot
x <- rnorm(100)
y <- rnorm(100)

#Creating the plot
plot(x,y)

#Creating the same plot with custom arguments
plot(x, y, xlab = "This is the x-axis", ylab = "This is the y-axis", main = "Plot of x vs y")

#Creating the plot and saving it to a pdf
pdf("Figure.pdf")
plot(x, y, col = "green")
dev.off()

#Creating sequences
x <- seq(1,10)
x
x <- 1:10
x
x <- seq(-pi, pi, length = 50)
x

#Creating a contour map
y <- x
f <- outer(x, y, function(x, y) cos(y) / (1 + x^2))
contour(x, y, f)
contour(x, y, f, nlevels = 45, add = T)
#The t function corresponds to transpose
fa <- (f-t(f)) / 2
contour(x, y, fa, nlevels=15)

#Creating various other plots
image(x, y, fa)
persp(x, y, fa)
persp(x, y, fa, theta = 30)
persp(x, y, fa, theta = 30, phi = 20)
persp(x, y, fa, theta = 30, phi = 70)
persp(x, y, fa, theta = 30, phi = 40)
