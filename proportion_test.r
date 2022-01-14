# A city branch of a bank claims that they are at least 99 % accurate on loan
# processing and at most only 1 % of loans are reworked. Validate the claim
# based on the data given in loan_processing.csv?

loan_data <- read.csv(file="loan_processing.csv")

num_correct <- sum(loan_data$Status == "Processed correctly")
num_reworked <- sum(loan_data$Status == "Reworked")
n <- nrow(loan_data)

prop_correct <- num_correct / n
prop_reworked <- num_reworked / n

prop_correct
prop_reworked

prop.test(x = num_correct, n = n, p = 0.99, alternative = "greater", conf.level = 0.99)