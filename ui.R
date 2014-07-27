library(shiny)

shinyUI(
  pageWithSidebar(
  #Application title
  headerPanel("Calculate Your Basal Metabolic Rate"),
  
  sidebarPanel(
    p('This page is a calculator to estimate your Basal Metabolic Rate (BMR).'),
    p('Your BMR is the amount of energy used by your body while at rest.'),
    p('To use this calculator, simply fill in all the fields on the left-hand side of the page.'),
    p('Then click the "Submit" button to receive your BMR on the right-hand side of the page.'),
    numericInput('Age', 'Age (years)', 25, min = 1, max = 90, step = 1),
    numericInput('Weight','Weight (kg)', 70, min=1, max=250, step = 1),
    numericInput('Height','Height (cm)', 160, min=1, max=300, step =1),
    selectInput('Gender', label = h3("Select Gender"), 
                c("Male"= 5, "Female"= -161)),
    submitButton('Submit')
    ),
  mainPanel(
    h4('Your BMR (kcal/day) is '),
    verbatimTextOutput("BMR")
    )
  )
)