#' @export
runBAFR <- function() {
  appDir <- system.file("shiny-app", package = "BAFR")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `BAFR`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
