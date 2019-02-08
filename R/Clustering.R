#'Clusters the data and splits the dendrogram into k clusters
#'@param sco An scell S4 object
#'@param k The number of clusters we wish to retrieve
#'@export clusterCells
clusterCells <- function(sco,k){
  
  hc <- hclust(as.dist(1-cor((sco@data))))
  sco@cell.clusters <- cutree(hc,k)
  sco
}

