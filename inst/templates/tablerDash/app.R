library(shiny)
library(tablerDash)

R.utils::sourceDirectory("boilerplates")


# dashboard page 
ui <- tablerDashPage(
  navbar = navbar, 
  body = body, 
  footer = footer,
  title = "tablerDash", 
  enable_preloader = TRUE, 
  loading_duration = 2
)


# Your server logic
server <- function(input, output, session) {}


shinyApp(ui, server) 