#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#


library(shiny)

# Define UI for application that draws a power curve with selected Delta value
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Power of t-Test"),
  
  # Sidebar with a slider input for Delta and Sample Size (n)
  sidebarLayout(
    sidebarPanel(
       sliderInput("Delta",
                   "Delta:",
                   min = 0,
                   max = 1,
                   value = 0.8),
       
      sliderInput("ssize",
                  "Sample Size(n):",
                  min = 2,
                  max = 100,
                  value =20)
    ),
    # Show a plot of the power distribution with selected Delta
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
