# Read Data
source("C:/Users/thep3_000/Desktop/Coursera/Exploratory Data Analysis/ReadData.R")

# Plot 2
png(filename = "plot2.png")
plot(small[,3] ~ small$Datetime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()