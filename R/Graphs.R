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
  
}