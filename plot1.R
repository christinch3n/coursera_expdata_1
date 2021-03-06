setwd("C:/Users/Christine/Documents/git-repositories/courseradatascience/ExpData_project1/")
data <- read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors=F, na.strings="?")

data <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

png("plot1.png", width=480, height=480)
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()