#' Make a ARIMA forecast
#'
#' This function takes a vector or time series of data,
#'fits a ARIMA function (selected with AIC), and plots the data
#'Nerea
#'
#' @param data This is a time-series data. Must be a vector or a ts vector
#'
#' @param nyears Number of years in the future to forecast.
#'
#' @examples
#' littleforecast (WW2)
#' @references REFERENCES.bib
#' @export
littleforecast <- function(data, nyears=10){
  fit <- forecast::auto.arima(data)
  fc <- forecast::forecast(fit, h = nyears)
  ggplot2::autoplot(fc)
  class(fit) <- c("foo", class(fit))
  return(fit)
}

devtools::document()
#create the help page
?littleforecast
