#' How to document datasets.
#'
#' This is an example showing how to document datasets included in the package (in \code{data} folder):
#' you must specify docType and name; do not forget NULL in the end.
#' Can include other fields, like citation.
#' See \url{http://r-pkgs.had.co.nz/data.html} for further explanations.
#'
#' @docType data
#' @name FRUBASE
#' @format A numeric vector.
#' @source Dataset repository \url{https://github.com/pedroj/FRUBASE}.
#' @examples
#' \dontrun{
#' data(FRUBASE)
#' str(frubase)
#' }
NULL
