# Building metadata.
# install.packages("devtools")
devtools::install_github("ropenscilabs/dataspice")

library(dataspice)

dataspice::create_spice()

dataspice::edit_creators()
dataspice::prep_access()
dataspice::edit_access()
dataspice::prep_attributes()
dataspice::edit_attributes()
dataspice::edit_biblio()

dataspice::write_spice()

dataspice::build_site()

