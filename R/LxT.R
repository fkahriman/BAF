#' @title Sıra x Dizi ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param replication  Replication as factor
#' @param Lines lines  as factor
#' @param Testers testers  as factor
#' @param genotypes genotypes  as factor
#' @param gclass gclass  as factor
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
#' @import plantbreeding
#'
#' @export
#'
#'
LinexTest <- function(data) {
  require(plantbreeding)
  LinexTest <- plantbreeding::line.tester(dataframe = file1, yvar = "trait1",  genotypes = "genotypes",
                                           replication = "replication",  Lines = "Lines", Testers = "Tester", gclass = "gclass" )
  return(LinexTest)
}

