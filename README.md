# MyFirstPackage

Here are the commands to execute each of the funtions once the package in installed:

library(MyFirstPackage)

hspc <- ReadNewSCell("Mouse_HSPC_reduced_v2.txt")
hspc <- GetVarGenes(hspc,150)
hspc <- readFACS(hspc,"Mouse_HSPC_reduced_IndexSortData.txt")
MakeHeatMap(hspc)

hspc <- CalcTSNE(hspc)

hspc <- clusterCells(hspc,5) #make 5 clusters of cells
ViolinPlotFACSfromCluster(hspc,1) # violin plots of FACS data for cluster 1
ColourTSNEbyClust(hspc)
ColourTSNEbyGeneExpr(hspc,"Mpo") # colour by expression of Mpo