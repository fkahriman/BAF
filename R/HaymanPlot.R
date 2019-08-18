#' @title Girffing, Hayman ve diğer ıslah desenlerinin analizi
#'
#' @description Bu paket ıslah denemelerinin analizi için geliştirilmiştir.
#'
#' @param VOLO <- HaymanR$VOLO
#' @param In.Value <- HaymanR$In.Value
#' @param a <- HaymanR$a
#' @param b <- HaymanR$b
#' @param Wr.Vr <- HaymanR$Wr.Vr.Table
#' @param data A \code{data.frame}
#' @return NULL
#'
#' @examples
#'
#'# Example1
#'
#' HaymanPlot(data.frame)
#'
#' @import ggplot2
#'
#' @export
#'
#'
HaymanPlot <- function(data.frame){
require(ggplot2)
HaymanPlot <- ggplot2::ggplot(data=data.frame(x=c(0, max(In.Value, Wr.Vr$Vr, Wr.Vr$Wr, Wr.Vr$Wrei))), aes(x)) +
  stat_function(fun=function(x) {sqrt(x*VOLO)}, color="blue") +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 0) +
  geom_abline(intercept = a, slope = b) +
  geom_abline(intercept = mean(Wr.Vr$Wr)-mean(Wr.Vr$Vr), slope = 1) +
  geom_segment(aes(
    x = mean(Wr.Vr$Vr)
    , y = min(0, mean(Wr.Vr$Wr))
    , xend = mean(Wr.Vr$Vr)
    , yend = max(0, mean(Wr.Vr$Wr))
  )
  , color = "green"
  ) +
  geom_segment(aes(
    x = min(0, mean(Wr.Vr$Vr))
    , y = mean(Wr.Vr$Wr)
    , xend = max(0, mean(Wr.Vr$Vr))
    , yend = mean(Wr.Vr$Wr)
  )
  , color = "green"
  ) +
  lims(x=c(min(0, Wr.Vr$Vr, Wr.Vr$Wrei), max(Wr.Vr$Vr, Wr.Vr$Wrei)),
       y=c(min(0, Wr.Vr$Wr, Wr.Vr$Wrei), max(Wr.Vr$Wr, Wr.Vr$Wri))
  ) +
  labs(
    x = expression(V[r])
    , y = expression(W[r])
    , title = expression(paste(W[r]-V[r] , " Graph"))
  ) +
  theme_bw()
return(HaymanPlot)
}
