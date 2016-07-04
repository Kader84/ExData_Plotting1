# Working directory

setwd('~/Documents/CoursR/exploratory-data-analysis/exploratory-data-analysis')

# required packages
library(data.table)
library(lubridate)

# Read the file

power_consumption <- read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?')

# Subset of data 

power_consumption1 <- subset(power_consumption, power_consumption$Date=='1/2/2007' | power_consumption$Date=='2/2/2007')
