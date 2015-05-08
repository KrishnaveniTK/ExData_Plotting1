#code for plot4
plot4<-function(fname){
  PrepareData(fname)

# open the file device  
png("plot4.png")

  par(mfrow=c(2,2),mar=c(4,4,3,3))
  ## plot1
  plot(DTF$DateTime,DTF$Global_active_power,
       type="l",
       ylab = "Global Active Power",
       xlab = "",
       cex.lab=0.75,
       cex.axis=0.75
  )
  ##plot2
  plot(DTF$DateTime,DTF$Voltage,
       type="l",
       ylab = "Voltage",
       xlab = "datetime",
       cex.lab=0.75,
       cex.axis=0.75
  )
  ##plot3
  plot(DTF$DateTime,DTF$Sub_metering_1, 
       type="l",
       col="black",
       ylab = "Energy sub metering",
       xlab = "",
       cex.lab=0.75,
       cex.axis=0.75
  )
  
  lines(DTF$DateTime,DTF$Sub_metering_2,col="red")
  
  lines(DTF$DateTime,DTF$Sub_metering_3, col = "blue")
  
  legend(x="topright", lty = 1,
         col=c("black","red","blue"),
         bty= "n",
         cex= 0.75,
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

  ## plot4
  plot(DTF$DateTime,DTF$Global_reactive_power,
       type="l",
       ylab = "Global Reactive Power",
       xlab = "datetime",
       cex.lab=0.75,
       cex.axis=0.75
  )

dev.off()
}