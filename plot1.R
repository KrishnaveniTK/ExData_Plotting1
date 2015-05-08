
## Code to plot1
plot1<-function(fname){
PrepareData(fname)

# open the file device  
png("plot1.png")
par(mfrow=c(1,1))

hist(DTF$Global_active_power,
     col="red",
     main=paste("Global Active Power"),
     xlab = "Global Active Power(kilowatts)",
     ylab= "Frequency",
     font.lab=2,
     cex.lab=1,
     cex.axis=1
     )

dev.off()
}