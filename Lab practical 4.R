library(dplyr)
library(ggplot2)
install.packages(modeest)
library(modeest)

#dataset
data("iris")
data("mtcars")
data("airquality")

#1 calculate the mean,median,mode,and standard deviation
mean(iris$Petal.Width)
median(iris$Petal.Width)
mlv(iris$petal.Width,method="mfv")
sd(iris$Petal.Width)

#2 histogram of mpf dataset (mtcars dataset)
data(mtcars)
hist(mtcars$mpg,
     main="Histogram of mpg",
     xlab="Miles per Galoon",
     col="Lightblue",
     border = "Black")
#3 scatterplot of hp vs mpg(mtcars)
plot(mtcars$hp,mtcars$mpg,
     main="Scatterplot of Hp vs MPG",
     xlab="Horsepower",
     ylab="Miles per Gallon",
     col = "blue",
     pch=19)
#4 Boxplot of sepal.length by species (iris dataset)
boxplot(Sepal.Length ~ Species,
        data=iris,
        main="Boxplot of Sepal.Length by Species",
        xlab="Species",
        ylab="Sepal Length",
        col=c("lightgreen","lightblue","pink"))

