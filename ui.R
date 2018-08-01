#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#


library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Coin Flips"),
  
  # Sidebar with slider inputs for number of probability of heads, number of trials per experiment and number of experiments 
  sidebarLayout(
    sidebarPanel(
      
       sliderInput("prob",
                   "Probability",
                   min = 0,
                   max = 1,
                   value = 0.5),
       
       sliderInput("trials",
                   "Number of trials:",
                   min = 1,
                   max = 100,
                   value = 20),
       sliderInput("experiments",
                   "Number of experiments:",
                   min = 10,
                   max = 10000,
                   value = 500)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("coinflips")
  
    )
  )
))
