#' Read FACS data and put it into a scell object
#' @param sco the scell object
#' @param FileIn the facs file
#' @export readFACS
readFACS <- function( sco, FileIn ) {
  facs <- read.delim(FileIn,row.names=1,header=T,sep="\t")
  sco@facs <- as.matrix(t(facs))[,colnames(sco@data)]
  #sco@facs <- sco@facs[,colnames(sco@data)]
  sco
}
