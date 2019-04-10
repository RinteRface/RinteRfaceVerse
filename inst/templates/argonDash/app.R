library(shiny)
library(argonR)
library(argonDash)

R.utils::sourceDirectory("boilerplates")


# dashboard page 
ui <- argonDashPage(
  title = "argonDash", 
  description = "argonDash boilerplate", 
  author = "Divad Nojnarg",
  navbar = navbar, 
  sidebar = sidebar, 
  header = header, 
  body = body,
  footer = footer
)


# Your server logic
server <- function(input, output, session) {}


shinyApp(ui, server) 