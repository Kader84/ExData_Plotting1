# Working directory

setwd('~/Desktop/GitHub/exploratory-data-analysis')

# required packages
library(data.table)
library(lubridate)

# Read the file

power_consumption <- read.table('./data/household_power_consumption.txt',header=TRUE,sep=';',na.strings='?')

# Subset of data 

power_consumption1 <- subset(power_consumption, power_consumption$Date=='1/2/2007' | power_consumption$Date=='2/2/2007')

# Data transformation

power_consumption1$Date <- as.Date(power_consumption1$Date, format="%d/%m/%Y")

power_consumption1 <- transform(power_consumption1, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")

power_consumption1$Global_active_power <- as.numeric(as.character(power_consumption1$Global_active_power))

power_consumption1$Global_reactive_power <- as.numeric(as.character(power_consumption1$Global_reactive_power))

power_consumption1$Voltage <- as.numeric(as.character(power_consumption1$Voltage))

power_consumption1$Sub_metering_1 <- as.numeric(as.character(power_consumption1$Sub_metering_1))

power_consumption1$Sub_metering_2 <- as.numeric(as.character(power_consumption1$Sub_metering_2))

power_consumption1$Sub_metering_3 <- as.numeric(as.character(power_consumption1$Sub_metering_3))

