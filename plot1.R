#Use ReadData module to read and parse the data
source("ReadData.R")

#Start device
png(filename = "plot1.png", width = 480, height = 480)

#Plot directives
hist(ds$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)", col="red")

#Close device
dev.off()
