shinyServer(
  function(input, output, session){
    
    output$myPlot <- renderPlot({
      
      distType <- input$Distrubtion
      size <- input$sampleSize
      
      if(distType == "Normal"){
        
        randomVec <- rnorm(size, mean = as.numeric(input$Mean), sd = as.numeric(input$sd))
      }
      else{
        
        randomVec <- rexp(size, rate = 1/ as.numeric(input$lambda))
      }
      
      hist(randomVec, col = "blue")
    })
  }
)
