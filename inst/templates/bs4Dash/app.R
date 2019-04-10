library(shiny)
library(bs4Dash)

R.utils::sourceDirectory("boilerplates")


# dashboard page 
ui <- bs4DashPage(
  navbar = navbar, 
  sidebar = sidebar, 
  body = body,
  controlbar = controlbar, 
  footer = footer, 
  title = "bs4Dash",
  old_school = FALSE, 
  sidebar_collapsed = FALSE,
  controlbar_collapsed = TRUE, 
  enable_preloader = TRUE,
  loading_duration = 2, 
  loading_background = "#1E90FF"
)


# Your server logic
server <- function(input, output, session) {}


shinyApp(ui, server) 