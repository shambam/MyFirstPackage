#'Calculate tSNE over 3 dims
#'@param sco
#'@export CalcTSNE
CalcTSNE <- function(sco){
  
  var.data <- t(sco@data[sco@var.genes,])
  
  tsne.out <- Rtsne(var.data,dim=3)
  sco@tsne <- tsne.out$Y
  rownames(sco@tsne) <- colnames(sco@data)
  sco
  
}