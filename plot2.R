#Use ReadData module to read and parse the data
source("ReadData.R")

#Start device
png(filename = "plot2.png", width = 480, height = 480)

#Plot directives
plot(ds$DateTime,ds$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#Close device
dev.off()


