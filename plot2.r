## Set working directory if necessary
##setwd("/Users/triston/Desktop/Data Science Work/ExData_Plotting1")

##Generate and format data, including date formatting and subsetting
Consumption<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
Consumption$Date<- as.Date(Consumption$Date, "%d/%m/%Y") 
Consumption$Datetime<-as.POSIXct(paste(Consumption$Date, Consumption$Time), format="%Y-%m-%d %H:%M:%S")
Consumption<-Consumption[ which( Consumption$Date >= "2007-2-1" & Consumption$Date <= "2007-2-2") , ]

##Generate Plot2
png(filename="plot2.png", width=480, height=480)
plot(Consumption$Datetime,Consumption$Global_active_power,type="l",ylab="Global Acive Power (kilowatts)", xlab="")
dev.off()