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
  
  req.cell <- which(sco@cell.clusters==clusID) #find which cells belong to the cluster we need
  
  req.facs <- sco@facs[,req.cell] #extract these cells from the facs data
  req.facs  <- as.data.frame(t(req.facs)) ## vioplot needs a data.frame to make vioplot per surface marker

  #vio.data <- as.list(as.data.frame(t(req.facs)))
  vioplot(req.facs,names=colnames(req.facs),main=paste("FACS data from cluster ",clusID)) #make a viloin plot of this data
  #print(names(vio.data))

}

#'Makes a 3D tSNE plot where cells are coloured by cluster
#'@param sco
#'@export ColourTSNEbyClust

ColourTSNEbyClust <- function(sco){

  #We need to make a colour plalette of divergent colours using Rcolorbrewer. This lib has been added to the dependencies.

  colrs <- brewer.pal(max(hspc@cell.clusters), "Set1") #make as many colours as we have clusters Set1 is a range of divergent colours
  rgl.points(sco@tsne,col=colrs[sco@cell.clusters]) # the last part makes a vector of the colours from the cluster information.
}


#'Makes a 3D tSNE plot where cells are coloured by the expression of a given gene
#'@param sco
#'@param gene
#'@export ColourTSNEbyGeneExpr

ColourTSNEbyGeneExpr <- function(sco,gene){

  values <- sco@data[gene,]

  ii <- cut(values, breaks = seq(min(values), max(values), len = 100), include.lowest = TRUE)
  colors <- colorRampPalette(c("lightblue","yellow", "red"))(99)[ii]
  
  rgl.points(sco@tsne,col=colors)
}
