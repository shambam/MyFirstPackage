#'Make a new scell class from a file
#'@param FileIn An scell S4 object
#'@export ReadNewSCell
#'
ReadNewSCell <- function(FileIn){
  datain <- read.delim(FileIn,row.names=1,header=T,sep="")
  newscell <- new("scell",data=as.matrix(datain))
  newscell
}