# Thomas Hepner
# Coursera: Exploratory Data Analysis
# Course Project 1
# 5/06/2015

setwd('C:/Users/thep3_000/Desktop/Coursera/Exploratory Data Analysis/')

# Understand the structure of the data better
library(data.table)
small = read.table("household_power_consumption.txt", header = TRUE, nrows = 10, sep = ";")
small$Date = as.Date(small$Date, '%d/%m/%Y')
classes <- sapply(small, class)
classnames = names(classes)

# Load the data in R efficiently
data = fread("household_power_consumption.txt", header= TRUE, na.strings = "?")
data$Date = as.Date(data$Date, '%d/%m/%Y')
small = data[which(data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02")),]
small = data.frame(small)
small[, 3] = as.numeric(small[, 3])
small[, 4] = as.numeric(small[, 4])
small[, 5] = as.numeric(small[, 5])
small[, 6] = as.numeric(small[, 6])
small[, 7] = as.numeric(small[, 7])
small[, 8] = as.numeric(small[, 8])
small[, 9] = as.numeric(small[, 9])
small$Datetime = as.POSIXct(paste(small[,1], small[,2]))
