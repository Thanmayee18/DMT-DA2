# Load required libraries
library(cluster)
library(datasets)

# Load the dataset
data <- read.csv("C:/Users/thanm/OneDrive/Desktop/data.csv.csv", header = TRUE)

# Perform agnes clustering
agnes_clusters <- agnes(data, method = "complete")  # You can change the method as needed

# Print the clustering result
print(agnes_clusters)

# Plot the dendrogram
plot(agnes_clusters, which.plots = 2)
