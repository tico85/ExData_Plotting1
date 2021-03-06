## Set working directory if necessary
##setwd("/Users/triston/Desktop/Data Science Work/ExData_Plotting1")

##Generate and format data, including date formatting and subsetting
Consumption<-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
Consumption$Date<- as.Date(Consumption$Date, "%d/%m/%Y") 
Consumption$Datetime<-as.POSIXct(paste(Consumption$Date, Consumption$Time), format="%Y-%m-%d %H:%M:%S")
Consumption<-Consumption[ which( Consumption$Date >= "2007-2-1" & Consumption$Date <= "2007-2-2") , ]

##Construct Plot1
png(filename="plot1.png", width=480, height=480)
hist(Consumption$Global_active_power,col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
