
source("loadData.R")
df <- loadHouseHoldPowerConsumptionDF()

Sys.setlocale("LC_TIME", "English")
with(df, plot(x=Date,y = Sub_metering_1, type="l",col="black", xlab="", ylab = "Energy sub metering"))
with(df, lines(x=Date,y = Sub_metering_2, type="l",col="red"))
with(df, lines(x=Date,y = Sub_metering_3, type="l",col="blue"))
legend("topright", lwd=1, lty=1, pch=NA, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file="plot3.png",width=480,height=480)
dev.off() #Close the PNG device
