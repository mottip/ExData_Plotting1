par(mfcol = c(2,2))
with(da2, {
  plot(datetime, Global_active_power, type='l')
  plot(datetime, Sub_metering_1, type='l', col='black', xlab="", ylab="Energy sub metering")
  lines(datetime, Sub_metering_2, col='red') 
  lines(datetime, Sub_metering_3, col='blue') 
  legend("topright", col=c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1))


  plot(datetime, Voltage, type='l')
  plot(datetime, Global_reactive_power, type='l')
})

dev.copy(png, 'plot4.png')
dev.off()
