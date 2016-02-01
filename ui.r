library(shiny)

# Define UI for application that takes in input
shinyUI(
  pageWithSidebar(
    # application title
    headerPanel("How much should I rent for in AirBnB?"),
    
    sidebarPanel(
    numericInput('accommodates', 'How many people can this unit accommdates?', 1, min=1,max=30,step=1),
    numericInput('bedrooms','Number of bedrooms: ', 0, min=0, max=10,step=1),
    numericInput('bathrooms','Number of bathrooms: ', 1, min=1, max=10,step=1),
    numericInput('beds', 'Number of beds: ', 1, min=1, max=20,step=1),
    submitButton('Submit')
  ),
  mainPanel(
    p('This application intends to help users who live in Seattle to find a good price point to put up in AirBnB.'),
    p('User have to to is to input some basic information such as number of people the unit can accommodate, 
      number of bathrooms, number of bedrooms, and number of beds that is available.  And then a suggestion will
      be provided based on the Seattle AirBnb listing data.'),
    h3('Results of Suggestion'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('The suggested per night price is '),
    verbatimTextOutput("prediction")
    )
))