# Dimensionality REduction using Principal Component Analysis (PCA)

# Load the mtcars dataset
data(mtcars)

# Perform PCA on the dataset
pca_result <- prcomp(mtcars[, c(1, 2, 3, 4, 5,6, 7, 8, 9, 10, 11)], scale = TRUE)

# Explore the PCA results
summary(pca_result)
pc1 <- pca_result$x[, 1]
pc2 <- pca_result$x[, 2]

# Visualize the PCA result
plot(pc1, pc2, xlab = "PC1", ylab = "PC2", main = "Scatter Plot of PC1 vs. PC2")