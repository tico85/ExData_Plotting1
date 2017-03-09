## Set working directory if necessary
##setwd("/Users/triston/Desktop/Data Science Work/ExData_Plotting1")

##Generate and format data, including date formatting and subsetting
Consumption<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
Consumption$Date<- as.Date(Consumption$Date, "%d/%m/%Y") 
Consumption$Datetime<-as.POSIXct(paste(Consumption$Date, Consumption$Time), format="%Y-%m-%d %H:%M:%S")
Consumption<-Consumption[ which( Consumption$Date >= "2007-2-1" & Consumption$Date <= "2007-2-2") , ]

##Generate Plot 3
png(filename="plot3.png", width=480, height=480)
plot(Consumption$Datetime,Consumption$Sub_metering_1,type="l",ylab="Energy sub metering", xlab="")
lines(Consumption$Datetime,Consumption$Sub_metering_2,col="red",type="l")
lines(Consumption$Datetime,Consumption$Sub_metering_3,col="blue",type="l")
legend(x="topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"))
dev.off()