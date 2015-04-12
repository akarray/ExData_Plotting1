setwd("/home/aka/work/data_science/exploratory-data-analysis/ExData_Plotting1")
dataFile <- "/home/aka/work/data_science/exploratory-data-analysis/ExData_Plotting1/data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

globalActivePower <- as.numeric(subData$Global_active_power)
png(file = "plot1.png", width=504, height=504 ,bg = "transparent")
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
