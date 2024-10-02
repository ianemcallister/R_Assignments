# Create a data frame
data_frame <- data.frame(
  Name = c("John", "Jane", "Alice"),
  Age = c(25, 30, 35),
  Married = c(TRUE, FALSE, TRUE)
)

print("# Summarize the data frame")
summary(data_frame)

new_row <- data.frame(
  Name = "Bob",
  Age = "40",
  Married = TRUE
)

print("# Adding a new row to the data frame")
updated_data_frame <- rbind(data_frame, new_row)
print(updated_data_frame)

# Adding a new column to the data frame
new_column <- c(TRUE, FALSE, TRUE, FALSE)

print('# Adding a new column to the data frame')
updated_data_frame <- cbind(updated_data_frame, Employed = new_column)
print(updated_data_frame)

# Removing a row form the data frame
print("# Removing a row from the data frame")
updated_data_frame <- updated_data_frame[-2, ]
print(updated_data_frame)

# Removing a column from the data frame
print("# Removing a column from the data frame")
updated_data_frame <- updated_data_frame[, -4]
print(updated_data_frame)






print("# Accessing columns using $ notation")
names <- data_frame$Name
ages <- data_frame$Age
married_status <- data_frame$Married
print(names)
print(ages)
print(married_status)

# Accessing columns using indexing
data_frame <- data.frame(
  Name = c("John", "Jane", "Alice"),
  Age = c(25, 30, 35),
  Married = c(TRUE, FALSE, TRUE)
)

print("# Accessing columns using indexing")
names <- data_frame[, "Name"]
ages <- data_frame[, "Age"]
married_status <- data_frame[, "Married"]
print(names)
print(ages)
print(married_status)