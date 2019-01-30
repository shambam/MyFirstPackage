#'Class defintion of an scell object
#'
#'The class takes a matrix of values and needs row and column names.
#'@exportClass scell
setClass("scell",
         slots=c(
           data="matrix",
           cells='data.frame',
           genes='data.frame',
           var.genes="character",
           tsne="matrix",
           facs="matrix"
           )
         )
