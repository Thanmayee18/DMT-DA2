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

# Perform k-medoids clustering
k <- 5  # Number of clusters, you can adjust this
kmedoids_result <- pam(features_matrix, k = k)

# Print the clustering result
print(kmedoids_result)

# Plot the clustering result
fviz_cluster(kmedoids_result, data = features_matrix)
