# Read Data
source("C:/Users/thep3_000/Desktop/Coursera/Exploratory Data Analysis/ReadData.R")

# Plot 1
png(filename = "plot1.png")
hist(small[,3], col = 'red', xlab = 'Global Active Power (kilowatts)', main = "Global Active Power")
dev.off()