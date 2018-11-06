#' frubase
#'
#' The FRUBASE package accompanies: Jordano, P. 1995. Angiosperm fleshy fruits and seed dispersers:
#' a comparative analysis of adaptation and constraints in plant-animal interactions. American
#' Naturalist 145: 163-191. It contains a copy of the main data file used for this paper, as 
#' well as other accompanying files (see below).
#' #' See \url{http://pedroj.github.io/FRUBASE/} for further explanations.
#'
#' @docType data
#' @name frubase
#' @format A dataframe.
#' @source Dataset repository \url{https://github.com/pedroj/FRUBASE}.
#' @examples
#' \dontrun{
#' data(frubase)
#' str(frubase)
#' 
#' # Filtering ---------------------------------------------------------------
#' require(dplyr)
#' 
#' frubase_df<- tbl_df(frubase)
#' dplyr::slice(frubase, 7:11)
#' frubase %>% filter(gen== "Vaccinium") %>% select(species, diam) 
#' }
NULL
