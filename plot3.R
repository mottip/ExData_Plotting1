par(mfcol = c(1,1))
with (da2, {
  plot(datetime, Sub_metering_1, type='l', col='black', xlab="", ylab="Energy sub metering")
  lines(datetime, Sub_metering_2, col='red') 
  lines(datetime, Sub_metering_3, col='blue') 
})
legend("topright", col=c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1))

dev.copy(png, 'plot3.png')
dev.off()
