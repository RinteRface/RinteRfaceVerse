#' Import RinteRface boilerplates in the chosen directory
#'
#' @param path Name of the folder to copy the boilerplates in.
#' @param lib Choose a flavor among \code{c("shinydashboardPlus", "bs4Dash", "argonDash", "tablerDash")}.
#' @export
useTemplate <- function(path, lib) {
  # copy existing boilerplates
  from <- system.file(paste0("templates/", lib), package = "RinteRfaceVerse")
  file.copy(from = from, to = path, recursive = TRUE)
}