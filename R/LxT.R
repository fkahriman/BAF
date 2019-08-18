#' @title Sıra x Dizi ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param replications  Replications as factor
#' @param lines lines  as factor
#' @param testers testers  as factor
#' @param y y  as variable
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
  LinexTest <- agricolae::lineXtester(with(data,replications,lines,testers,y))
  return(LinexTest)
}

