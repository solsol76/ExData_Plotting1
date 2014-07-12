# This script takes data from text file and load it into a table.
# The script also convert date and time from string to vars of type Date/Time


load_data<-function(){
data <- read.table("household_power_consumption.txt",
                 header=TRUE,
                 sep=";",
                 colClasses=c("character", "character", rep("numeric",7)),                 
                 na="?")

# convert strings   to Date/Time class
data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

# extract only  data from the dates 2007-02-01 and 2007-02-02
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
data <- subset(data, Date %in% dates)

return (data)
}