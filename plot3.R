#code for plot3
plot3<-function(fname){
  PrepareData(fname)

# open the file device  
png("plot3.png")

par(mfrow=c(1,1),mar=c(4,4,2,2))

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
       cex= 0.75,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))



dev.off()
}