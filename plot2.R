source("plot1.R")

boringLinePlot<-function(power, y, ylab="", xlab=""){
  plot(power$DT,
       y, 
       col="black", 
       ylab=ylab, 
       xlab=xlab,
       type="o",
       pch=".")
}

drawPlot2<-function(power){
  boringLinePlot(power, 
                 power$Global_active_power, 
                 ylab="Global Active Power (kilowatts)")
}

savePlot2<-function(){
  savePlot(drawPlot2, "plot2.png")
}