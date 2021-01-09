#' The FRUBASE database. 
#'
#' This is the page for the FRUBASE database, a huge dataset of fleshy fruit 
#' traits compiled from bibliographic references and my own work. Data are 
#' provided for more than 1000 plant species from all around the world.
#' 
#' Nomenclature and taxonomic arrangement follows Stevens, P.F. (2001 onwards).
#' Angiosperm Phylogeny Website. Version 8, June 2007. 
#' \url{http://www.mobot.org/MOBOT/research/APweb/}. This scheme follows: 
#' Angiosperm Phylogeny Group II. 2003. An update of the Angiosperm 
#' Phylogeny Group classification for the orders and families of flowering 
#' plants: APG II. Bot. J. Linnean Soc. 141: 399-436.
#'
#' Plant names and names of higher taxonomic categories have been checked with: 
#' Mabberley, D.J. 1987. The plant-book. A portable dictionary of the higher 
#' plants. Cambridge University Press, Cambridge, UK.
#'
#' Please, contact me if you have suggestions, find errors, inconsistencies, or 
#' any other bug in the file. As well, please let me know about your uses of 
#' this data and send manuscripts and reprints when available. 
#'
#' @docType data
#' 
#' @usage data(frubase)
#'
#' @format A dataset (dataframe)
#'
#' @keywords datasets
#'
#' @format A data frame with variables:
#' \describe{
#' \item{cl}{Class.}
#' \item{scl}{SubClass.}
#' \item{ord}{Order.}
#' \item{fam}{Family.}
#' \item{gen}{Genus.}
#' \item{sp}{Species.}
#' \item{ref}{Reference number - This is my maintenance code for updates.}
#' \item{newref}{New Reference number - These are the refs numbers in the files REFS and SUMMARY.}
#' \item{famlab}{Family Label -  An 8-character label for family.}
#' \item{genlab}{Genus Label -   An 8-character label for genus.}
#' \item{splab}{Species Label - An 8-character label for species.}
#' \item{cod}{Species code -  A 5-character code for the species.}
#' \item{dispcat}{Disperser type category - BIRDS, MIXED, MAMMALS.}
#' \item{disp}{Disperser type - Finer categorization. Not yet completed. Needs revision.}
#' \item{megafauna}{ Whether the fruit species is associated with dispersal of seeds by megafauna.}
#' \item{area}{Geographic area - Major geographic areas of the data sources. MEurope: Mediterranean Europe (also includes Israel and Morocco. NEurope: Temperate and Northern Europe. NAmerica: North America, excl. Southern Mexico. NTAmerica: Neotropical America, incl. Southern Mexico. Africa: Africa, south of Sahara. Australasia: Australia, Malaysia, New Guinea, and whole SouthEast Asia.}
#' \item{habit}{Growth habit - Tree, Shrub, Liana, Herb.}
#' \item{fruit}{Fruit type - Type of fruit. Not completed yet. Needs revision.}
#' \item{color}{Fruit color - Black, Blue, Red, Orange, Yellow, Green, Brown, White.}
#' \item{compcolor}{Whether the fruit is monocolored, bicolored, or multicolored.}
#' \item{leng}{Fruit length (mm).}
#' \item{diam}{Fruit diameter (mm).}
#' \item{frfm}{Fruit fresh mass (g).}
#' \item{pdm}{Dry mass of pulp per fruit (g).}
#' \item{sdm}{Dry mass of seed(s) per fruit (g).}
#' \item{seeds}{Number of seeds per fruit.}
#' \item{seedm }{Seed dry mass (g).}
#' \item{ry}{Relative yield of pulp (PDM/FRFM*100).}
#' \item{kjg}{Specific energy content of pulp (kJ/g).}
#' \item{kjfr}{Total energy content per fruit (kJ).}
#' \item{pcw}{Percent water content of fruit.}
#' \item{lip}{Proportion of lipids (per g dry pulp).}
#' \item{pro}{Proportion of protein (per g dry pulp).}
#' \item{nsc}{Proportion of non-structural carbohydrates (per g dry pulp).}
#' \item{ash}{Proportion of minerals (per g dry pulp).}
#' \item{fib}{Proportion of acid-detergent fiber (per g dry pulp).}
#' }
#'
#' @references Jordano, P. 1995. Angiosperm fleshy fruits and seed dispersers: a comparative analysis of adaptation and constraints in plant-animal interactions. American Naturalist 145: 163-191.
#'
#' @source \href{https://raw.githubusercontent.com/pedroj/FRUBASE/master/inst/extdata/frubase.tsv}{Data tsv archive}
#'
#' @source Dataset repository \url{https://github.com/pedroj/FRUBASE}.
#'
"frubase"
