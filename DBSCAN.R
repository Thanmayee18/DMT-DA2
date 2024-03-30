# Install and load the fpc package
install.packages("fpc")
library(fpc)

# Read the dataset
data <- read.csv("C:/Users/thanm/OneDrive/Desktop/data.csv.csv")

# Assuming your dataset has columns for features and a column for labels
# You may need to adjust the column names accordingly
features <- data[, -ncol(data)]  # Exclude the label column
labels <- data[, ncol(data)]  # Assuming the label column is the last one

# Convert features to matrix
features_matrix <- as.matrix(features)

# Perform DBSCAN clustering
dbscan_result <- dbscan(features_matrix, eps = 0.5, MinPts = 5)  # You can adjust eps and MinPts as needed

# Print the clustering result
print(dbscan_result)

# Plot the clustering result
plot(dbscan_result, features_matrix)
