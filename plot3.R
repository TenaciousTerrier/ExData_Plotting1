# Read Data
source("C:/Users/thep3_000/Desktop/Coursera/Exploratory Data Analysis/ReadData.R")

# Plot 3
png(filename = "plot3.png")
plot(small$Sub_metering_1 ~ small$Datetime, type = "l", xlab = "", ylab = "Energy sub metering")
lines(small$Sub_metering_2 ~ small$Datetime, col = "red")
lines(small$Sub_metering_3 ~ small$Datetime, col = "blue")
legend(x = "topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))
dev.off()
