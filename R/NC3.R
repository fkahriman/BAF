#' @title Girffing, Hayman ve diğer ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param Loc  location as factor
#' @param set  set as factor
#' @param rep  replication as factor
#' @param male male 1 as factor
#' @param female male 2 as factor
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
#' NCM3(data)
#'
#'
#'
#' @import agricolae
#'
#' @export
#'
#'
NCM3 <- function(data) {
  require(agricolae)
  NCM3 <- agricolae::carolina(model = 3, data)
  return(NCM3)
}

