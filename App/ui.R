
shinyServer(
  pageWithSidebar(
    headerPanel("My First Shiny Application"),
    
    sidebarPanel(
      selectInput("Distrubtion","Please Select Distrubtion Type",
                  choices = c("Normal","Expontential")),
      sliderInput("sampleSize", "Please Select Sample Size: ",
                  min=100, 
                  max=5000, 
                  value=1000, 
                  step=100),
      conditionalPanel(condition = "input.Distribution == 'Normal' ",
                       textInput("Mean" , "Please Select the mean", 10),
                       textInput("sd", "Please Select Standard Deviation", 3)),
      conditionalPanel(condition = "input.Distribution == 'Expontential' ",
                       textInput("lambda", "Please Select Expontential Lambda", 1))
    ),
    
    mainPanel(
      plotOutput("myPlot")
    )
    
  )
  
)
