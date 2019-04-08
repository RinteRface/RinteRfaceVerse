#' Select the relevant dashboard page function
#'
#' Depending on the selected library, choose the suitable dashboard page function
#'
#' @param lib Choose a flavor among \code{c("shinydashboardPlus", "bs4Dash", "argonDash", "tablerDash")}.
usePage <- function(lib) {
  switch(lib,
    "shinydashboardPlus" = shinydashboardPlus::dashboardPagePlus,
    "bs4Dash" = bs4Dash::bs4DashPage,
    "argonDash" = argonDash::argonDashPage,
    "tablerDash" = tablerDash::tablerDashPage
  )
}

globalVariables(c("navbar", "sidebar", "controlbar", "footer", "header"), package = "RinteRfaceVerse")


#' Preview basic boilerplates of the RinteRface HTML template collection
#'
#' @param lib Choose a flavor among \code{c("shinydashboardPlus", "bs4Dash", "argonDash", "tablerDash")}.
#' 
#' @examples
#' if (interactive()) {
#'  previewTemplate("bs4Dash")
#' }
#'
#' @export
previewTemplate <- function(lib = c("shinydashboardPlus", "bs4Dash", "argonDash", "tablerDash")) {
  lib <- match.arg(lib)
  if (!requireNamespace(package = lib))
    message(paste0("Package ", lib, " is required to run this function"))
  
  if (lib == "shinydashboardPlus") {
    purrr::map(c("shinydashboard", lib), library, character.only = TRUE)
  } else if (lib == "argonDash") {
    purrr::map(c("argonR", lib), library, character.only = TRUE)
  } else {
    library(lib, character.only = TRUE)
  }
  
  # source all boilerplates
  R.utils::sourceDirectory(system.file(paste0("templates/", lib), package = "RinteRfaceVerse"))
  
  dashboard_page <- usePage(lib)
  
  ui <- switch(lib,
    "shinydashboardPlus" = dashboard_page(
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
    ),
    "bs4Dash" = dashboard_page(
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
    ),
    "argonDash" = dashboard_page(
      title = "argonDash", 
      description = "argonDash boilerplate", 
      author = "Divad Nojnarg",
      navbar = navbar, 
      sidebar = sidebar, 
      header = header, 
      body = body,
      footer = footer
    ),
    "tablerDash" = dashboard_page(
      navbar = navbar, 
      body = body, 
      footer = footer,
      title = "tablerDash", 
      enable_preloader = TRUE, 
      loading_duration = 2
    )
  )
  
  server <- function(input, output, session) {}
  
  shiny::shinyApp(ui, server)
  
}