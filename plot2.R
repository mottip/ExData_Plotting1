par(mfcol = c(1,1))
all_dat = read.csv('household_power_consumption.txt', sep=';', na.strings="?")
dat$datetime <- strptime(paste(dat$Date,dat$Time),'%m/%d/%Y %H:%M:%S')
dat = all_dat[all_dat$Date=='1/2/2007' | dat$Date=='2/2/2007' ,]

plot(da2$datetime, da2$Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)')
dev.copy(png, 'plot2.png')
dev.off()
