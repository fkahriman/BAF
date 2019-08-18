#' @title Girffing, Hayman ve diğer ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param set  set as factor
#' @param male male 1 as factor
#' @param female male 2 as factor
#' @param progenie  progenie as factor
#' @param replication  replication as factor
#' @param data A \code{data.frame}
#' @param model Model for Diallel Analysis using NC approach.
#'        It can take \strong{1} or \strong{2} or \strong{3} as arguments depending on the model being used.
#'        \enumerate{
#'        \item NCM1 Model;
#'        \item NCM2 Model;
#'        \item NCM3 Model.
#'        }
#' @return NULL
#'
#' @examples
#'
#'# Example1
#'
#' NCM1(data)
#'
#'
#'
#' @import agricolae
#'
#' @export
#'
#'
NCM1 <- function(data) {
  require(agricolae)
  NCM1 <- agricolae::carolina(model = 1, data)
  return(NCM1)
}

