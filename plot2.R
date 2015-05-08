## code for plot2
plot2<-function(fname){
PrepareData(fname)

# open the file device  
png("plot2.png")
par(mar=c(2,4,3,3),mfrow=c(1,1))

plot(DTF$DateTime,DTF$Global_active_power,
     type="l",
     ylab = "Global Active Power(kilowatts)",
     xlab = "",
     cex.lab=0.75,
     cex.axis=0.75
     )



dev.off()
}