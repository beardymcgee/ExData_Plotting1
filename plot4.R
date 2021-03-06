## Reads the data from Internet, filters it and converts it to the format needed
if ( !exists("selData")) source('loadData.R')
png(filename = "plot4.png", width=480, height=480)
par(mfrow=c(2,2), new=F)
plot(x = selData$DateTime, y = selData$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab="")
plot(x = selData$DateTime, y = selData$Voltage, type = "l", ylab = "Voltage", xlab="datetime")
par(new=F)
pcolors<- c("black", "red", "blue")
plot(x = selData$DateTime, y = selData$Sub_metering_1, type = "l", col=pcolors[1], ylim=c(0,38), xlab="", ylab = "")
par(new=T)
plot(x = selData$DateTime, y = selData$Sub_metering_2, type = "l", col=pcolors[2], ylim=c(0,38), xlab="", ylab = "")
par(new=T)
plot(x = selData$DateTime, y = selData$Sub_metering_3, type = "l", col=pcolors[3], ylim=c(0,38), xlab="", ylab = "Energy sub metering")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=pcolors, lwd=1, bty = "n", cex = 0.9)
par(new=F)
plot(x = selData$DateTime, y = selData$Global_reactive_power, type = "l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
