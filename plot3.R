setwd("/home/aka/work/data_science/exploratory-data-analysis/ExData_Plotting1")
dataFile <- "/home/aka/work/data_science/exploratory-data-analysis/ExData_Plotting1/data/household_power_consumption.txt"

data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(subData$Date, subData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subData$Global_active_power)

png("plot3.png", width=504, height=504 ,bg = "transparent")
plot(datetime, as.numeric(subData$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(datetime, as.numeric(subData$Sub_metering_2), type="l", col="red")
lines(datetime, as.numeric(subData$Sub_metering_3), type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()