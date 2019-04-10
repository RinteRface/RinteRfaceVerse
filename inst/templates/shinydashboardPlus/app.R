library(shiny)
library(shinydashboard)
library(shinydashboardPlus)

R.utils::sourceDirectory("boilerplates")


# dashboard page 
ui <- dashboardPagePlus(
  header = navbar, 
  sidebar = sidebar, 
  body = body, 
  rightsidebar = controlbar,
  footer = footer, 
  title = "shinydashboardPlus", 
  skin = "blue",
  collapse_sidebar = TRUE, 
  sidebar_background = "light",
  sidebar_fullCollapse = FALSE, 
  enable_preloader = TRUE,
  loading_duration = 2, 
  md = FALSE
)


# Your server logic
server <- function(input, output, session) {}


shinyApp(ui, server) 