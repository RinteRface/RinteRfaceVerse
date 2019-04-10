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
  
  # run the app
  shiny::shinyAppDir(system.file(paste0("templates/", lib), package = "RinteRfaceVerse"))
}