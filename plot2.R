
source("loadData.R")
df <- loadHouseHoldPowerConsumptionDF()

Sys.setlocale("LC_TIME", "English")
with(df, plot(x=Date, y=Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)"))

dev.copy(png, file="plot2.png",width=480,height=480)
dev.off() #Close the PNG device
