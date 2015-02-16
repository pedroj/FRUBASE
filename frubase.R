###########################################################################
### FRUBASE. July 2007. Freiburg. Nov 2007, Sevilla.
###########################################################################
frubase<-read.table("frubase.txt",header=TRUE,sep="\t",dec=".",na.strings="NA")

str(frubase)
'data.frame':	910 obs. of  32 variables:
 $ cl     : Factor w/ 2 levels "Liliopsida","Magnoliopsida": 2 2 2 2 2 2 2 2 2 2 ...
 $ scl    : Factor w/ 9 levels "Arecidae","Asteridae",..: 8 8 8 8 8 8 8 8 8 8 ...
 $ ord    : Factor w/ 40 levels "Apiales","Arales",..: 34 34 34 34 34 34 34 34 34 34 ...
 $ fam    : Factor w/ 94 levels "ANACARDIACEAE",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ gen    : Factor w/ 395 levels "Aceratium","Acnistus",..: 159 277 277 277 277 289 289 304 304 304 ...
 $ sp     : Factor w/ 754 levels "IF-6","SEGC291",..: 117 383 384 514 676 393 436 177 394 566 ...
 $ ref    : int  36 0 0 68 0 40 75 0 61 37 ...
 $ newref : int  43 17 17 21 17 41 35 17 8 22 ...
 $ famlab : Factor w/ 94 levels "ANACARDI","ANNONACE",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ genlab : Factor w/ 392 levels "Aceratiu","Acnistus",..: 158 278 278 278 278 290 290 305 305 305 ...
 $ splab  : Factor w/ 714 levels "IF-6","SEGC291",..: 108 362 362 487 638 371 414 167 372 532 ...
 $ cod    : Factor w/ 842 levels "AABY","AACU",..: 352 566 567 584 603 569 575 624 637 651 ...
 $ dispcat: Factor w/ 3 levels "Birds","Mammals",..: 1 1 1 1 1 3 3 1 1 1 ...
 $ disp   : Factor w/ 3 levels "","Mixed","Small birds": 1 1 3 3 3 2 2 3 3 3 ...
 $ area   : Factor w/ 6 levels "Africa","Australasia",..: 1 3 3 3 3 1 1 3 1 4 ...
 $ fruit  : Factor w/ 8 levels "","Aril","Berry1",..: 5 5 5 5 5 5 5 5 5 5 ...
 $ leng   : num  22.2 5.2 5.2 NA 6.4 NA NA 5.2 6.5 NA ...
 $ diam   : num  10.6 5.3 5.5 NA 5.8 NA NA 4.8 6.5 NA ...
 $ frfm   : num  1.1 0.1 0.1 NA 0.18 NA NA 0.02 NA 0.03 ...
 $ pdm    : num  NA 0.03 0.01 NA 0.04 NA NA 0.01 NA 0 ...
 $ sdm    : num  NA 0.03 0.01 NA 0.05 NA NA 0.01 NA NA ...
 $ seeds  : num  1 1 1 NA 1 NA 1 1 NA 1 ...
 $ seedm  : num  NA 0.03 0.01 NA 0.05 NA NA 0.01 NA NA ...
 $ ry     : num  NA 28.3 18.4 NA 21.7 NA NA 49.8 NA 3.6 ...
 $ kjg    : num  13.6 30.0 20.8 26.4 29.3 ...
 $ kjfr   : num  NA 0.87 0.24 NA 1.15 NA NA 0.26 NA 0.03 ...
 $ pcw    : num  NA 46.8 60.2 43.8 51.2 74 75 8.5 NA 66.7 ...
 $ lip    : num  0.02 0.59 0.16 0.58 0.56 0.05 0.01 0.37 NA NA ...
 $ pro    : num  0.06 0.06 0.08 0.07 0.08 0.04 0.08 0.05 NA NA ...
 $ nsc    : num  0.72 0.26 0.74 0.12 0.29 0.89 0.44 0.37 NA NA ...
 $ ash    : num  0.07 0.03 0.03 NA 0.03 0.03 NA 0.02 NA NA ...
 $ fib    : num  0.14 0.08 NA 0.08 0.06 NA 0.23 0.18 NA NA ...

# Filtering ---------------------------------------------------------------
require(magrittr)
require(dplyr)
species<- paste(frubase$gen,frubase$sp,sep=" ")
frubase<- data.frame(frubase[,1:6], species, frubase[,7:32])

frubase_df<-tbl_df(frubase)

frubase %>% filter(fam== "ANACARDIACEAE") %>% select(species) 

# Using taxize
require(taxize)
mynames<-frubase %>% 
            filter(fam== "ANACARDIACEAE") %>% 
            select(species)    # The species taxon list

mylist<- get_ids(names=mynames, db = c('ncbi','itis','col','tropicos'))

# Cleanup list -----------------------------------------------------------
There are many ways to resolve taxonomic names in taxize. Of course, the ideal name resolver will do the work behind the scenes for you so that you dont have to do things like fuzzy matching. There are a few services in taxize like this we can choose from: One is the Taxonomic Name Resolution Service from iPlant (see function *tnrs*).

# The tnrs function accepts a vector of 1 or more
mylist_tnrs <- tnrs(query=mynames, getpost="POST", source = "iPlant_TNRS")

# Remove some fields

mylist_tnrs <- mylist_tnrs[,!names(mylist_tnrs) %in% c("matchedName","annotations","uri")]

# Note the scores. They suggest that there were no perfect matches, but they were all very close, ranging from 0.77 to 0.99 (1 is the highest). 
# Let's assume the names in the "acceptedName" column are correct (and they should be).

# So here's our updated species list
mylist_final <- as.character(mylist_tnrs$acceptedname)
```

Another option is the Global Names Resolver service from EOL (see function *gnr_resolve*) and 

```{r}
sources <- gnr_datasources()
eol <- sources$id[sources$title == 'EOL']
out <- gnr_resolve(splist, data_source_ids=eol, stripauthority=TRUE)
unique(out$results)
```

### Datasets --------------------------------------------------------------
nfrubase<-frubase[,17:32] # Numeric data only

### Correlation matrices
frubcor <- cor(log(frubase[,17:32]+1),use="pairwise") # Full correlation matrix
frubmorphcor<- cor(log(nfrubase[,1:8]+1),use="pairwise") # Morph correlation matrix
frubnutrcor<- cor(log(nfrubase[,9:16]+1),use="pairwise") # Nutrient correlation matrix

### Plots of correlation matrices
library(Hmisc)
round(frubcor <- cor(log(nfrubase+1),use="pairwise"), 3)  # NOTE: pairwise
round(frubmorphcor <- cor(log(nfrubase[,1:8]+1),use="pairwise"), 3)  # NOTE: pairwise
round(frubnutrcor <- cor(log(nfrubase[,9:16]+1),use="pairwise"), 3)  # NOTE: pairwise
### the heat maps of the correlation matrix
heatmap(frubcor,symm = TRUE,margin=c(6,6),col=gray((32:0)/32))# with reorder()
heatmap(frubmorphcor,symm = TRUE,margin=c(6,6),col=gray((32:0)/32))# with reorder()
heatmap(frubnutrcor,symm = TRUE,margin=c(6,6),col=gray((32:0)/32))# with reorder()

# Integration --- MORPHOLOGICAL MATRIX
	feigen_morph<-eigen(frubmorphcor)
	feigen_morph$values
fintegr.morph<-var(feigen_morph$values)
fintegr.morph
# Relative integration
fmm1<-(ncol(frubmorphcor)-1)/length(nfrubase[,1]) # Maximum expected variance
fintegr.morph/ncol(frubmorphcor)
 
# Integration --- NUTRIENT MATRIX
	feigen_nutr<-eigen(frubnutrcor)
	feigen_nutr$values
fintegr.nutr<-var(feigen_nutr$values)
fintegr.nutr
# Relative integration
fmm2<-(ncol(frubnutrcor)-1)/length(nfrubase[,9]) # Maximum expected variance
fintegr.nutr/ncol(frubnutrcor)

###########################################################################
### Phylogenetic analyses
names(frubase)
names(nfrubase)
hist(log(nfrubase[,1]+1))
correl.frub<-correlogram.formula(log(frubase[,19]+1)~cl/scl/ord/fam/gen,use="pairwise.complete.obs")
correl.frub<-correlogram.formula(log(frubase[,17]+1)~cl/scl/ord/fam/gen)



