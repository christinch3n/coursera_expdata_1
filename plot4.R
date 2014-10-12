setwd("C:/Users/Christine/Documents/git-repositories/courseradatascience/ExpData_project1/")
data <- read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors=F, na.strings="?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
data$timestamp <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_TIME", "English")
png("plot4.png", height=480, width=480)
par(mfrow=c(2,2))

# plot 1
plot(data$timestamp, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")


# plot 2
plot(data$timestamp, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

# plot 3
plot(data$timestamp, data$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(data$timestamp, data$Sub_metering_2, col="red")
lines(data$timestamp, data$Sub_metering_3, col="blue")

legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, bty="n")


# plot 4
plot(data$timestamp, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

dev.off()
