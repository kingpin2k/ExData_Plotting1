source("plot1.R")
source("plot2.R")
source("plot3.R")

drawPlot4<-function(power){
  par(mfrow=c(2,2))
  drawPlot2(power)
  # I intentionally left the datetime label off this one, it didn't look
  # consistent with the first one
  boringLinePlot(power, power$Voltage, ylab="Voltage")
  
  drawPlot3(power)
  
  # I intentionally left the datetime label off this one, it didn't look
  # consistent with the first one
  boringLinePlot(power, power$Global_reactive_power, ylab="Global_reactive_power")
}

savePlot4<-function(){
  savePlot(drawPlot4, "plot4.png")
}