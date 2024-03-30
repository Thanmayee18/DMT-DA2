# Load the required libraries
library(cluster)
library(factoextra)  # For visualization purposes

# Read the dataset
data <- read.csv("C:/Users/thanm/OneDrive/Desktop/data.csv.csv")

# Assuming your dataset has columns for features and a column for labels
# You may need to adjust the column names accordingly
features <- data[, -ncol(data)]  # Exclude the label column
labels <- data[, ncol(data)]  # Assuming the label column is the last one

# Convert features to matrix
features_matrix <- as.matrix(features)

# Compute the distance matrix
dist_matrix <- dist(features_matrix)

# Perform Hierarchical Clustering
hclust_result <- hclust(dist_matrix, method = "complete")  # You can adjust the method as needed

# Plot the dendrogram
plot(hclust_result, cex = 0.6)  # Adjust the cex parameter for font size
