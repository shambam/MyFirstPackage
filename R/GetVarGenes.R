#'Calculates the top N variable genes from a scell object
#'@param sco An scell S4 object
#'@param nvar The number of genes we wish to retrieve
#'@export GetVarGenes

GetVarGenes <- function(sco,nvar){
  
  genes.var <- apply(sco@data,1,var)
  top.var.genes <- names(rev(sort(genes.var))[1:nvar])
  sco@var.genes <- top.var.genes #puts the var genes into a new slot
  sco@tsne <- matrix()
  sco #returns the new object
}
