setwd("C:/Users/Christine/Documents/git-repositories/courseradatascience/ExpData_project1/")
data <- read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors=F, na.strings="?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
data$timestamp <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_TIME", "English")
png("plot2.png", height=480, width=480)
plot(data$timestamp, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()