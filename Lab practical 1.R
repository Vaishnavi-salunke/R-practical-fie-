#display 15 rows of mtcars data set
data("mtcars")
head(mtcars,15)

#find the maximum and minimum sepal.length
data("iris")
min_val <- min(iris$Sepal.Length)
max_val <-max(iris$Sepal.Length)
print(min_val)
print(max_val)
#mean of variable mpg in mtcars
mean_mpg <- mean(mtcars$mpg)
print(mean_mpg)

#structure of airquality dataset
str(airquality)

#check if 100 greater than 50
100>50
