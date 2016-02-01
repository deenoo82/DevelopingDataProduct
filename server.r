library(shiny)

data <- read.csv('./data/listings.csv')
data$price <- as.numeric(gsub('\\$','',data$price))
model <- glm(price ~ accommodates + bathrooms + bedrooms + beds, data=data)

shinyServer(
  function(input, output) {
     output$inputValue <- renderPrint({paste('Accommodates: ', input$accommodates, 
                                             '# of Bathrooms:', input$bathrooms, 
                                             '# of bedrooms:', input$bedrooms,
                                             '# of beds:', input$beds
                                            )})
     output$prediction <- renderPrint({predict(model, data.frame(accommodates=input$accommodates,
                                                                 bathrooms=input$bedrooms,
                                                                 bedrooms=input$bedrooms,
                                                                 beds=input$beds))})
  }
)