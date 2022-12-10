# Ten individuals have participated in a diet – modification program to stimulate
# weight loss. Their weights (in kg) both before and after participation in the
# program is given in Diet.csv. On an average is the program successful? On an
# average whether the weight is reduced by 5 kg?

# Subject Before After
# 1 88 85
# 2 97 88
# 3 112 100
# 4 91 86
# 5 85 79
# 6 95 89
# 7 98 90
# 8 112 100
# 9 133 126
# 10 141 129

diet_data <- read.csv(file="Diet.csv")
t.test(diet_data$Before, diet_data$After, mu = 0, alt = "less", paired = TRUE, conf.level = 0.95)

#determine the average weight reduction is 5kg
mean_diff <- mean(diet_data$Before - diet_data$After)
mean_diff