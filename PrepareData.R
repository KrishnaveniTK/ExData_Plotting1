PrepareData<-function(fname){
DT<-read.table(fname,sep=";",
               header= TRUE,
               colClasses=c(rep("character",9)),
               stringsAsFactors=FALSE)
DT<-setDT(DT)
DTF<-DT[DT$Date %in% c("1/2/2007", "2/2/2007")]
## Convert into date field
DTF$Date<-as.Date(DTF$Date,"%d/%m/%Y")

DTF$DateTime<-as.POSIXct(paste(DTF$Date,DTF$Time),format="%Y-%m-%d %H:%M:%S")

## Convert the character fields into numeric

DTF$Global_active_power<-as.numeric(DTF$Global_active_power)
DTF$Global_reactive_power<-as.numeric(DTF$Global_reactive_power)
DTF$Voltage<-as.numeric(DTF$Voltage)
DTF$Global_intensity<-as.numeric(DTF$Global_intensity)
DTF$Sub_metering_1<-as.numeric(DTF$Sub_metering_1)
DTF$Sub_metering_2<-as.numeric(DTF$Sub_metering_2)
DTF$Sub_metering_3<-as.numeric(DTF$Sub_metering_3)
}


