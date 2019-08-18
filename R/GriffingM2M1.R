#' @title Girffing, Hayman ve diğer ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param Rep  Replicate as factor
#' @param Cross1 Cross 1 as factor
#' @param Cross2 Cross 2 as factor
#' @param data A \code{data.frame}
#' @param Method Method for Diallel Analysis using Griffing's approach.
#'        It can take \strong{1}, \strong{2}, \strong{3}, or \strong{4}
#'         as argument depending on the method being used.
#'        \enumerate{
#'        \item Method-I (Parents + \eqn{F_{1}}'s + reciprocals);
#'        \item Method-II (Parents and one set of \eqn{F_{1}}'s);
#'        \item Method-III (One set of \eqn{F_{1}}'s and reciprocals);
#'        \item Method-IV (One set of \eqn{F_{1}}'s only).
#'        }
#' @param Model Model for Diallel Analysis using Griffing's approach.
#'        It can take \strong{1} or \strong{2} as arguments depending on the model being used.
#'        \enumerate{
#'        \item Fixed  Effects Model;
#'        \item Random Effects Model.
#'        }
#' @return NULL
#'
#' @examples
#'
#'# Example1
#'
#' GriffingM2M1(data)
#'
#'
#'
#' @import DiallelAnalysisR
#'
#' @export
#'
#'
GriffingM2M1 <- function(data) {
  require(DiallelAnalysisR)
  GriffingM2M1 <- DiallelAnalysisR::Griffing(Yield, Rep, Cross1, Cross2, data, 2, 1)
  return(GriffingM2M1)
}

