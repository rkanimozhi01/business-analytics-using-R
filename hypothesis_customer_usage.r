set.seed(123) # for reproducibility

# create data frame with 30 observations
credit_card_data <- data.frame(
  credit_usage = round(runif(30, min = 1, max = 10), 2) * 1000, # random credit usage between 1000 and 10000
  gender = sample(c(1, 2), 30, replace = TRUE), # random gender (1: male, 2: female)
  shopping = sample(c(1, 2), 30, replace = TRUE), # random shopping (1: yes, 2: no)
  banking = sample(c(1, 2), 30, replace = TRUE) # random banking (1: yes, 2: no)
)

# view the data frame
credit_card_data
# two-sample t-test for gender
t.test(credit_card_data$credit_usage ~ credit_card_data$gender, var.equal = TRUE)


# two-sample t-test for shopping
t.test(credit_card_data$credit_usage ~ credit_card_data$shopping, var.equal = TRUE)

# two-sample t-test for banking
t.test(credit_card_data$credit_usage ~ credit_card_data$banking, var.equal = TRUE)