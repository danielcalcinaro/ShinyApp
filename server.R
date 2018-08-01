#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#


library(shiny)
library(stats)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$coinflips <- renderPlot({
    
    
    x    <- rbinom(input$experiments,input$trials,input$prob)
    
   
    
    # draw the histogram with the specified number of coinflips and specified probability of heads
    hist(x, col = 'blue', border = 'white',main= paste(input$experiments, "Experiments of ", input$trials, " Coin Flips with a " , 100*input$prob, "/", 100*(1-input$prob), " coin"))
    
  })
  

  
})
