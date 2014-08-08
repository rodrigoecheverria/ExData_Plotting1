#Use ReadData module to read and parse the data
source("ReadData.R")

#Start device
png(filename = "plot3.png", width = 480, height = 480)

#Base plot: Sub_metering_1 (Black line)
plot(ds$DateTime,ds$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

#Sub_metering_2 (Red line)
lines(ds$DateTime, ds$Sub_metering_2, col="red")

#Sub_metering_3 (Blue line)
lines(ds$DateTime, ds$Sub_metering_3, col="blue")

#Legend
legend("topright", 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), #Names
       col=c("black","red","blue"), lty=c(1,1,1), lwd=c(1,1,1))      #Line settings (color, type and width)

#Close device
dev.off()
