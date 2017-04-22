BindFitLogs <- function(history, fitLog) {
  result <- history %>% bind_rows(fitLog)
  
  flog.info(toJSON(fitLog, digits = 8, auto_unbox = T))
  
  return(result)
}