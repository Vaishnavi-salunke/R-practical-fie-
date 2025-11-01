#1displaying str of inbuilt data of  airquality 
data("airquality")
str(airquality)

#2finding mising values in airquality dataset
sum(is.na(airquality))

#3summarize the mcars dataset
data("mtcars")
summary(mtcars)

#4finding mean hp of mtcars dataset
mean(mtcars$hp)

library(dplyr)

#5Group by Species and calculate average Sepal.Width
iris %>%
  group_by(Species) %>%
  summarise(avg_sepal_width = mean(Sepal.Width))
