
source("loadData.R")
df <- loadHouseHoldPowerConsumptionDF()

png(filename ="plot4.png",width=480,height=480)
Sys.setlocale("LC_TIME", "English")

#Set 4 plots on a graphic
par(mfrow = c(2,2))

#1rst Plot
with(df, plot(x=Date, y=Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)"))

#2nd Plot
with(df, plot(x=Date, y=Voltage, type="l", xlab="datetime"))

#3rd Plot
with(df, plot(x=Date,y = Sub_metering_1, type="l",col="black", xlab="", ylab = "Energy sub metering"))
with(df, lines(x=Date,y = Sub_metering_2, type="l",col="red"))
with(df, lines(x=Date,y = Sub_metering_3, type="l",col="blue"))
legend("topright", cex=0.7, lwd=1, lty=1, pch=NA, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

#4rd Plot
with(df, plot(x=Date, y=Global_reactive_power, type="l", xlab="datetime"))

dev.off() #Close the PNG device
