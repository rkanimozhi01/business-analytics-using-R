#copy the monthly_expenses file in the current working directory
#Head the CSV file into a dataframe
df <- read.csv(file ="monthly_Expenses.csv")

# Compute the mean, median, minimum, and maximum of the expenses
mean_expenses <- mean(df$Expenses)
median_expenses <- median(df$Expenses)
min_expenses <- min(df$Expenses)
max_expenses <- max(df$Expenses)

# Compute the range, variance, and standard deviation of the expenses
range_expenses <- range(df$Expenses)
var_expenses <- var(df$Expenses)
sd_expenses <- sd(df$Expenses)

# Compute the skewness and kurtosis of the expenses
skew_expenses <- moments::skewness(df$Expenses)
kurt_expenses <- moments::kurtosis(df$Expenses)

# Compute the quartiles of the expenses
quartiles_expenses <- quantile(df$Expenses, probs = c(0.25, 0.5, 0.75))

# Print the results
cat("Mean expenses: ", mean_expenses, "\n")
cat("Median expenses: ", median_expenses, "\n")
cat("Minimum expenses: ", min_expenses, "\n")
cat("Maximum expenses: ", max_expenses, "\n")
cat("Range of expenses: ", range_expenses, "\n")
cat("Variance of expenses: ", var_expenses, "\n")
cat("Standard deviation of expenses: ", sd_expenses, "\n")
cat("Skewness of expenses: ", skew_expenses, "\n")
cat("Kurtosis of expenses: ", kurt_expenses, "\n")
cat("Quartiles of expenses: ", quartiles_expenses, "\n")

# Compute the default summary of monthly expenses
summary(df$Expenses)

# Draw a histogram of monthly expenses
hist(df$Expenses, main = "Histogram of Monthly Expenses", xlab = "Expenses (in 1000 Rs.)", ylab = "Frequency", col = "blue")