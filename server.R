BMR <- function(Age, Weight, Height, Gender) (10*Weight)+(6.25*Height)-(5*Age)+Gender

shinyServer(
  function(input,output){
    output$BMR <- renderPrint({BMR(input$Age,input$Weight,input$Height,as.numeric(input$Gender))})
  }
)