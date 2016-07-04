# load data
source('DownloadData.R')

# open device
png(filename='plot3.png',width=480,height=480,units='px')

# plot data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power_consumption1$Date,power_consumption1$SubMetering1,type='l',col=lncol[1],xlab='',ylab='Energy sub metering')
lines(power_consumption1$Date,power_consumption1$SubMetering2,col=lncol[2])
lines(power_consumption1$Date,power_consumption1$SubMetering3,col=lncol[3])

# add legend
legend('topright',legend=lbls,col=lncol,lty='solid')

# close device
x<-dev.off()