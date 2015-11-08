# The next two funcs are used in all 4 plot files

getPower<-function(){
  # power.csv was build using this
  # power<-read.delim("household_power_consumption.txt", sep=";", na="?")
  # q<-power$Date=="1/2/2007" | power$Date=="2/2/2007"
  # power<-power[q,]
  # write.csv(power, file="power.csv")
  power<-read.csv("power.csv")
  power$DT <- paste(power$Date, power$Time)
  power$DT <- strptime(power$DT, format='%d/%m/%Y %H:%M:%S')
  power
}


savePlot<-function(drawer, filename){
  power<-getPower()
  png(filename)
  drawer(power)
  dev.off()
}

drawPlot1<-function(power){
  hist(power$Global_active_power, 
       col="red", 
       xlab="Global Active Power (kilowatts)", 
       main="Global Active Power",
       ylim=c(0,1200))
}

savePlot1<-function(){
  savePlot(drawPlot1, "plot1.png")
}
