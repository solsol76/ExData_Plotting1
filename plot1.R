#This script takes data from the load_data.R and creates a histogram in red
#that displays the relation between frequency and Global Active power.
#The script also creates a png file with the histogram.



source("load_data.R")

plot1 <- function(){
  
  data<-load_data()
  
  png("plot1.png", width=480, height=480)
  
  hist(df$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  dev.off()
}