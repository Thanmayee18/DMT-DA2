# Load required libraries
library(cluster)
library(datasets)

# Load the dataset
data <- read.csv("C:/Users/thanm/OneDrive/Desktop/data.csv.csv", header = TRUE)

# Perform k-means clustering
kmeans_clusters <- kmeans(data, centers = 2)  # You can change the number of centers as needed

# Print the clustering result
print(kmeans_clusters)

# Plot the clustering result
plot(data, col = kmeans_clusters$cluster)
points(kmeans_clusters$centers, col = 1:2, pch = 8, cex = 2)
