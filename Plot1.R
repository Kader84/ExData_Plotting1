# Working Directory

setwd('~/Documents/CoursR/exploratory-data-analysis/exploratory-data-analysis')


# load data
source('DownloadData.R')

# open device
png(filename='plot1.png',width=480,height=480,units='px')

# plot data

hist(power_consumption1$Global_active_power,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

# Turn off device
x<-dev.off()

# Turn off device
x<-dev.off()