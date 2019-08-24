#' Run ShinyApp
#'
#' Launches the shiny app GUI interface to sedproxy
#'
#' @export
#'
#' @examples
#' \dontrun{runBAFR()}
#' @export
runBAFR <- function() {
  fl <- system.file("shinyapp/app.R", package = "BAFR")
  shiny::runApp(fl)
}
