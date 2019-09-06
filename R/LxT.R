#' @title Sıra x Dizi ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param replications  Replications as factor
#' @param Lines lines  as factor
#' @param Testers testers  as factor
#' @param yvar y  as variable
#' @param data A \code{data.frame}
#' @return NULL
#'
#' @examples
#'
#'# Example1
#'
#' LinexTest(data)
#'
#'
#' @import agricolae
#'
#' @export
#'
#'
LinexTest <- function(data) {
  require(agricolae)
  LinexTest <- agricolae::lineXtester(replications, lines, testers, y)
  return(LinexTest)
}

