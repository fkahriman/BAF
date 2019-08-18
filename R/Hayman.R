#' @title Girffing, Hayman ve diğer ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param Rep  Replicate as factor
#' @param Cross1 Cross 1 as factor
#' @param Cross2 Cross 2 as factor
#' @param data A \code{data.frame}
#' @return NULL
#'
#' @examples
#'
#'# Example1
#'
#' Hayman(data)
#'
#'
#'
#' @import DiallelAnalysisR
#'
#' @export
#'
#'
HaymanR <- function(data) {
  require(DiallelAnalysisR)
  HaymanR <- DiallelAnalysisR::Hayman(Yield, Rep, Cross1, Cross2, data)
  return(HaymanR)
}
