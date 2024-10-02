# Create a factor
category <- factor(c("A", "B", "A", "A"))
# Print the factor
category


# Create a factor
colors <- factor(c("Red", "Blue", "Green", "Yellow"))
# Access the second element of the factor
element_2 <- colors[2]
# Print the result
element_2


# Factors are mutable
fruits <- factor(c("Apple", "Banana", "Orange", "Mango"))
# Define levels for the factor
levels(fruits) <- c(levels(fruits), 'Grape')
# Modify the second element
fruits[2] <- "Grape"
# Print the modified factor
fruits

# Combining data frames
data_frame1 <- data.frame(
  Name = c("John", "Jane", "Alice"),
  Age = c(25, 30, 35)
)
data_frame2 <- data.frame(
  Name = c("Bob", "Charlie", "Eve"),
  Age = c(40, 45, 50)
)
# Combine the data frames vertically (row-wise)
combined_df <- rbind(data_frame1, data_frame2)
combined_df
# Combine the data frames horizontally (column-wise)
combined_df <- cbind(data_frame1, data_frame2)
combined_df


# Identifying duplicates
data_frame <- data.frame(
  Name = c("John", "Jane", "Alice", "John"),
  Age = c(25, 30, 35, 25)
)

# Identify duplicate rows
duplicate_rows <- duplicated(data_frame)

# Remove duplicate rows
unique_df <- data_frame[!duplicate_rows, ]
unique_df



# Modifying levels of factors
# Create a factor with defaul levels
weather <- factor(c("Sunny", "Rainy", "Cloudy", "Sunny"))

# Display the current levels
current_levels <- levels(weather)
current_levels

# Modify the levels
new_levels <- c("Sunny", "Cloudy", "Rainy")
weather <- factor(weather, levels = new_levels)
weather

# Reorder the levels
weather <- relevel(weather, ref = "Rainy")
weather
