# load data
source('DownloadData.R')

# open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(power_consumption1$timestamp,power_consumption1$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')

# close device
x<-dev.off()