# Challenge 9
# Perform principal component analysis (PCA) on the mtcars dataset 
# to reduce the dimensionality, and create a scatter plot of the 
# first two principal components. Once done, upload your code to 
# GitHub.

# Perfrom PCA on selected columns
pca <- prcomp(mtcars[, -c(1, 8, 9, 10)], scale = TRUE)

# Extrac tthe scores of the first two principal components
scores <- as.data.frame(pca$x[, 1:2])

plot(scores$PC1, scores$PC2, xlab = 'PC1', ylab = 'PC2', main = "Scatter Plot of PC1 vs. PC2")
