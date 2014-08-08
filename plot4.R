#Use ReadData module to read and parse the data
source("ReadData.R")

#Start device
png(filename = "plot4.png", width = 480, height = 480)

#Set the grid
par(mfrow = c(2,2))

#First plot (1,1)
plot(ds$DateTime,ds$Global_active_power, type="l", xlab="", ylab="Global Acive Power")

#Second plot (1,2)
plot(ds$DateTime,ds$Voltage, type="l", xlab="datetime", ylab="Voltage")

#Third plot (2,1)
#see plot3.R for details
plot(ds$DateTime,ds$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(ds$DateTime,ds$Sub_metering_2,col="red")
lines(ds$DateTime,ds$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue", lty=c(1,1,1)), lwd=c(1,1,1), bty="n")

#Fourth plot (2,2)
plot(ds$DateTime,ds$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

#Close device
dev.off()