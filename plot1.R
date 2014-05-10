par(mfcol = c(1,1))
all_dat = read.csv('household_power_consumption.txt', sep=';', na.strings="?")
dat$datetime <- strptime(paste(dat$Date,dat$Time),'%m/%d/%Y %H:%M:%S')
dat = all_dat[all_dat$Date=='1/2/2007' | dat$Date=='2/2/2007' ,]

hist(da2$Global_active_power, col='red', main='Global Active Power', xlab='Global Active Power (kilowatts)')

dev.copy(png, 'plot1.png')
dev.off()
