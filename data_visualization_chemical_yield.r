# Read the CSV file into a dataframe
df <- read.csv(file="Chemical_Yield.csv")

# Replace missing values with mean
df$Temperature[is.na(df$Temperature)] <- mean(df$Temperature, na.rm = TRUE)
df$Time[is.na(df$Time)] <- mean(df$Time, na.rm = TRUE)
df$Viscosity[is.na(df$Viscosity)] <- mean(df$Viscosity, na.rm = TRUE)
df$Yield[is.na(df$Yield)] <- mean(df$Yield, na.rm = TRUE)

# Plot the relationship between temperature, time, and yield
plot(df$Temperature, df$Yield, xlab = "Temperature", ylab = "Yield")
plot(df$Time, df$Yield, xlab = "Time", ylab = "Yield")
plot(df$Viscosity, df$Yield, xlab = "Viscosity", ylab = "Yield")