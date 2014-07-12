#This script creates a plot that demonstrates the relation between time 
#and Global Active Power. The script creates a png file with the diagram.



source("load_data.R")


plot2 <- function() {
 
  data <- load_data()
  
  
  png("plot2.png", width=400, height=400)
  
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}
