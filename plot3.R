source("plot1.R")

drawPlot3<-function(power){
  plot(power$DT, 
       power$Sub_metering_1, 
       type="n",
       ylab="Energy sub metering",
       xlab="")
  
  columns <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  cols <- c("black", "red", "blue")
  
  # build up each section of points
  for(i in seq_along(columns)){
    points(power$DT, power[[columns[i]]], col=cols[i], type="o", pch=".")
  }
  
  # build up the legend
  legend("topright",
         legend=columns,
         col=cols,
         lty=rep(1,3))
}

savePlot3<-function(){
  savePlot(drawPlot3, "plot3.png")
}

