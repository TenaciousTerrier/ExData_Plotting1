# Read Data
source("C:/Users/thep3_000/Desktop/Coursera/Exploratory Data Analysis/ReadData.R")

# Plot 4
png(filename = "plot4.png")
par(mfrow=c(2,2))

# Top Left
plot(small[,3] ~ small$Datetime, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Top Right
plot(small[,5] ~ small$Datetime, type = "l", xlab = "datetime", ylab = "Voltage")

# Bottom Left
plot(small$Sub_metering_1 ~ small$Datetime, type = "l", xlab = "", ylab = "Energy sub metering")
lines(small$Sub_metering_2 ~ small$Datetime, col = "red")
lines(small$Sub_metering_3 ~ small$Datetime, col = "blue")
legend(x = "topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1), col = c("black", "red", "blue"))

# Bottom Right
plot(small[,4] ~ small$Datetime, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()