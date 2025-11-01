# Count total missing values
sum(is.na(airquality))
#Count missing values per column
colSums(is.na(airquality))

#calculate missing values wth median instead of mean
airquality$Ozone[is.na(airquality$Ozone)] <- median(airquality$Ozone, na.rm = TRUE)

# duplicate with mtcars
mtcars_with_duplicates <-rbind(mtcars, mtcars[1:5, ])   
nrow(mtcars_with_duplicates)

#remove duplicates
mtcars_clean <- dplyr::distinct(mtcars_with_duplicates)
nrow(mtcars_clean)  


rownames(mtcars) <- toupper(rownames(mtcars))

# Convert Species to numeric codes
iris$Species <- as.numeric(as.factor(iris$Species))

