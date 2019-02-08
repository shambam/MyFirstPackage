#'Clusters the data and splits the dendrogram into k clusters
#'@param sco An scell S4 object
#'@param k The number of clusters we wish to retrieve
#'@export clusterData
clusterData <- function(sco,k){
  
  hc <- hclust(as.dist(1-cor(t(sco$data)))
  
  sco@clusters <- cutree(hc,k)
  sco
}