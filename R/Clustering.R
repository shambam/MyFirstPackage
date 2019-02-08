#'Clusters the data and splits the dendrogram inot N clusters
#'@param sco An scell S4 object
#'@param k The number of clusters we wish to retrieve
#'@export clusterData
clusterData <- function(sco,k){
  
  d.scaled <- scale(sco@data) #scales the data per row
  clust <- cutree(hclust(dist(d.scaled)),k)
  sco@clusters <- clust
  sco
}