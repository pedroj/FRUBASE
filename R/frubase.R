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
#' \item{CL}{Class}
#' \item{SCL}{SubClass}
#' \item{ORD}{Order}
#' \item{FAM}{Family}
#' \item{GEN}{Genus}
#' \item{SP}{Species}
#' \item{REF}{Reference number - This is my maintenance code for updates.}
#' \item{NEWREF}{New Reference number - These are the refs numbers in the files REFS and SUMMARY.}
#' \item{FAMLAB}{Family Label -  An 8-character label for family.}
#' \item{GENLAB}{Genus Label -   An 8-character label for genus.}
#' \item{SPLAB}{Species Label - An 8-character label for species.}
#' \item{COD}{Species code -  A 5-character code for the species.}
#' \item{DISPCAT}{Disperser type category - BIRDS, MIXED, MAMMALS.}
#' \item{DISP}{Disperser type - Finer categorization. Not yet completed. Needs revision.}
#' \item{MEGAFAUNA}{ Whether the fruit species is associated with dispersal of seeds by megafauna.}
#' \item{AREA}{Geographic area - Major geographic areas of the data sources. MEurope: Mediterranean Europe (also includes Israel and Morocco. NEurope: Temperate and Northern Europe. NAmerica: North America, excl. Southern Mexico. NTAmerica: Neotropical America, incl. Southern Mexico. Africa: Africa, south of Sahara. Australasia: Australia, Malaysia, New Guinea, and whole SouthEast Asia.}
#' \item{HABIT}{Growth habit - Tree, Shrub, Liana, Herb.}
#' \item{FRUIT}{Fruit type - Type of fruit. Not completed yet. Needs revision.}
#' \item{COLOR}{Fruit color - Black, Blue, Red, Orange, Yellow, Green, Brown, White.}
#' \item{COMPCOLOR}{Whether the fruit is monocolored, bicolored, or multicolored.}
#' \item{LENG}{Fruit length (mm)}
#' \item{DIAM}{Fruit diameter (mm)}
#' \item{FRFM}{Fruit fresh mass (g)}
#' \item{PDM}{Dry mass of pulp per fruit (g)}
#' \item{SDM}{Dry mass of seed(s) per fruit (g)}
#' \item{SEEDS}{Number of seeds per fruit}
#' \item{SEEDM }{Seed dry mass (g)}
#' \item{RY}{Relative yield of pulp (PDM/FRFM*100)}
#' \item{KJG}{Specific energy content of pulp (kJ/g)}
#' \item{KJFR}{Total energy content per fruit (kJ)}
#' \item{PCW}{Percent water content of fruit}
#' \item{LIP}{Proportion of lipids (per g dry pulp)}
#' \item{PRO}{Proportion of protein (per g dry pulp)}
#' \item{NSC}{Proportion of non-structural carbohydrates (per g dry pulp)}
#' \item{ASH}{Proportion of minerals (per g dry pulp)}
#' \item{FIB}{Proportion of acid-detergent fiber (per g dry pulp)}
#' }
#'
#' @references Jordano, P. 1995. Angiosperm fleshy fruits and seed dispersers: a comparative analysis of adaptation and constraints in plant-animal interactions. American Naturalist 145: 163-191.
#'
#' @source \href{https://raw.githubusercontent.com/pedroj/frubase/master/data/frubase.tsv}{Data txt archive}
#'
#' @source Dataset repository \url{https://github.com/pedroj/FRUBASE}.
"frubase"

