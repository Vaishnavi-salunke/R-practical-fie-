# Install required packages (run only once)
install.packages("dplyr")
install.packages("ggplot2")
install.packages("factoextra")

# Load libraries
library(dplyr)
library(ggplot2)
library(factoextra)

# 1. Load dataset (only numeric features)
data("iris")
iris_data <- iris[, 1:4]

# 2. Elbow Method to find optimal K
fviz_nbclust(iris_data, kmeans, method = "wss") +
  labs(title = "Elbow Method for Optimal K")

# 3. Apply K-means clustering with K = 4
set.seed(123)
kmeans_model <- kmeans(iris_data, centers = 4, nstart = 20)

# 4. Compare with actual species labels
table(kmeans_model$cluster, iris$Species)

# 5. Visualize clusters using PCA-based scatterplot
fviz_cluster(kmeans_model, data = iris_data,
             ellipse.type = "norm",
             palette = "jco",
             ggtheme = theme_minimal())
