#'Make a heatmap of the previously defined var genes
#'@param sco
#'@export MakeHeatMap
#'
MakeHeatMap <- function(sco){
  var.data <- sco@data[sco@var.genes,] # this is a comment
  pheatmap(var.data,scale="row") # another comment
}

#'Make a violin plot of the facs data from particular cluster defined in the clusters slot
#'@param sco
#'@param clusID
#'@export ViolinPlotFACSfromCluster
#'
ViolinPlotFACSfromCluster <- function(sco,clusID){
  
  req.cell <- which(sco@cell.clusters==clusID)
  
  req.facs <- sco@facs[,req.cell]
  req.facs  <- as.data.frame(t(req.facs))

  #vio.data <- as.list(as.data.frame(t(req.facs)))
  vioplot(req.facs,names=colnames(req.facs),main=paste("FACS data from cluster ",clusID))
  #print(names(vio.data))

}
