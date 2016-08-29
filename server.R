#####################
# Date: 8/2//2016 
# Description: power of t-test with different Delta and Sample size

library(shiny)

#install.packages(c("pwr","powerSurvEpi"))
#load packages of "pwr", "powerSurvEpi"
library(pwr)
library(powerSurvEpi)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
output$distPlot <- renderPlot({
# generate Delta based on input$Delta from ui.R
nvals <- seq(2,100,length.out = 99)
powvals <- sapply(nvals, function (x) power.t.test(n=x, delta=input$Delta)$power)
pv <- as.data.frame(t(rbind(nvals,powvals)))
# create power curve plot with the specified Delta
plot(pv$nvals, pv$powvals, ylim=c(0:1),xlab="Sample Size (n)", ylab="Power",main="Power curve of t-test", lwd=2.5,col="blue",type="l")
#Power of specified Sample Size(n)
abline(v=input$ssize,col="red", lwd=1.8, lty=2)
abline(h=pv$powvals[pv$nvals==input$ssize],col="red", lwd=1.8, lty=2)
text(input$ssize-3,pv$powvals[pv$nvals==input$ssize]+0.04,formatC(pv$powvals[pv$nvals==input$ssize],digits=3))

  })
  
})


