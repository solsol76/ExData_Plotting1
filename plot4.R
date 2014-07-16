#This is a diagram that contains 4 different diagramms. The diagramms show the 
#values of Global Active Power, Voltage, Energy sub metering and Global Reactive power
#during the period


source("load_data.R")


plot4 <- function() {
  
  data <- load_data()
  
  
  png("plot4.png", width=480, height=480)
  
  
  par(mfrow=c(2,2))
  # Diagram 1 (upper left)
  plot(data$Time, data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power")
  # Diagram 2 (upper right)
  plot(data$Time, data$Voltage, type="l",
       xlab="datetime", ylab="Voltage")
  # Diagram 3 (down left)
  plot(data$Time, data$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  lines(data$Time, data$Sub_metering_2, col="red")
  lines(data$Time, data$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1,
         box.lwd=0)
  # Diagram 4(down rigth)
  plot(data$Time, data$Global_reactive_power, type="n",
       xlab="datetime", ylab="Global_reactive_power")
  lines(data$Time, data$Global_reactive_power)
  
  dev.off()
  
  
}
