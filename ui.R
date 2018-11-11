
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

shinyUI(fluidPage(

  # Application title
  titlePanel("Water Quality Data Application"),

  # Sidebar with user input controls
  sidebarLayout( 
    sidebarPanel(
      selectInput(inputId='site', 
                  label ='Site', 
                  choices = unique(sitename[1,1]), #change to a list format such that the user can choose from multiple sites
                  selected = NULL, 
                  multiple = FALSE,
                  selectize = TRUE, 
                  width = NULL, 
                  size = NULL),
      selectInput(inputId='param', 
                  label ='Select parameter to plot', 
                  choices = list('Temperature' = 'Temperature_C'), #change so that all the pcodes are listed with their respective variable name
                  selected = NULL, 
                  multiple = FALSE,
                  selectize = TRUE, 
                  width = NULL, 
                  size = NULL),
      dateRangeInput("dates", label = h3("Date range")),
      
      hr(),
      fluidRow(column(4, verbatimTextOutput("value")))
      
    ),
    # Show outputs, text, etc. in the main panel
    mainPanel(
      
    )
  )
))
