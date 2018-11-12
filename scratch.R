library(tidyverse)

download_link <- function(district, wave){
  
  district <- tolower(district)
  
  stopifnot(is.character(district))
  
  x <- paste("https://raw.githubusercontent.com/TheUpshot/2018-live-poll-results/master/data/elections-poll-", 
             district, "-", wave, ".csv", sep = "") 
  
  y <- read_csv(x)
  
  invisible(y)
}
