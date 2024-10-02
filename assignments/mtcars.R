?mtcars

# Assign the mtcars data set to a new variable for better organization
Data_Cars <- mtcars

# Find the dimensions of the data set
dim(Data_Cars)

# View the names of the variables
names(Data_Cars)



# Getting row names
Data_Cars <- mtcars
rownames(Data_Cars)


# Accessing variable values
Data_Cars <- mtcars
sort(Data_Cars$cyl)


# Working with the sumary function
Data_Cars <- mtcars
summary(Data_Cars)


# Working with min and max
Data_Cars <- mtcars
max(Data_Cars$hp)
min(Data_Cars$hp)

# Accessing indexes
Data_Cars <- mtcars
rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]


# Accessing mean, median, mode
Data_Cars <- mtcars
mean(Data_Cars$wt)
median(Data_Cars$wt)
names(sort(-table(Data_Cars$wt)))[1]


# Percentiels and quartiles
Data_Cars <- mtcars
# Find the 75th percentile (three-quarters) of car weight (wt)
quantile(Data_Cars$wt)
# quantile(Data_Cars$wt, c(0.75))



# Quantiles plot
Data_Cars <- mtcars

# Calculate quartiles
quartiles <- quantile(Data_Cars$wt, probs = c(.25, .5, .75))

# Access quartiles individually
Q1 <- quartiles[1]
median <- quartiles[2]
Q3 <- quartiles[3]

# Calculate interquartile range (IQR)
IQR <- Q3 - Q1

# Create a boxplot for weight (wt)
boxplot(Data_Cars$wt, main = "Weight Distribution", ylab = "Weight")
