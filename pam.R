# Install the factoextra package
install.packages("factoextra")

# Load required libraries
library(cluster)
library(datasets)
library(factoextra)

# Load the dataset
data <- read.csv("C:/Users/thanm/OneDrive/Desktop/data.csv.csv", header = TRUE)

# Perform PAM clustering
pam_clusters <- pam(data, k = 2)  # You can change the number of clusters (k) as needed

# Print the clustering result
print(pam_clusters)

# Plot the clustering result
fviz_cluster(pam_clusters, data = data, geom = "point", stand = FALSE)
