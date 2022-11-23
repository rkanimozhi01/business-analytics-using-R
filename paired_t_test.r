# The manager of a fleet of automobiles is testing two brands of radial tires. He assigns one tire of each brand at random to the two rear wheels of eight cars
# and runs the cars until the tire wear out. Is both brands have equal mean life?
# The data in kilometers is given as below

# Brand 1 Brand 2
# 36925 34318
# 45300 42280
# 36240 35500
# 32100 31950
# 37210 38015
# 48360 47800
# 38200 37810
# 33500 33215

brand1 <- c(36925, 45300, 36240, 32100, 37210, 48360, 38200, 33500)
brand2 <- c(34318, 42280, 35500, 31950, 38015, 47800, 37810, 33215)

t.test(brand1, brand2, var.equal = TRUE)

