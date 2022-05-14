## Loading the data

## Read the table to file my_data
my_data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",
                      na.strings = "?", colClasses = 
                        c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## Format date the date
my_data$Date <- as.Date(my_data$Date, "%d/%m/%Y")

## Filtering the data
my_data <- subset(my_data,Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

## Dealing with incomplete conversions
my_data <- my_data[complete.cases(my_data),]

## Data and Time columns combination
dateTime <- paste(my_data$Date, my_data$Time)

## Vector naming
dateTime <- setNames(dateTime, "DateTime")

## Delete date and time column
my_data <- my_data[ ,!(names(my_data) %in% c("Date","Time"))]

## Date and Time columns
my_data <- cbind(dateTime, my_data)

## Date time to POSIXct
my_data$dateTime <- as.POSIXct(dateTime)