******************************** FRUBASE PACKAGE ******************************

                              VERSION 4.0. DEC 2007.
                              Working on new version 5.0. Feb 2015!!

THE FRUBASE PACKAGE ACCOMPANIES:

Jordano, P. 1995. Angiosperm fleshy fruits and seed dispersers: a comparative
analysis of adaptation and constraints in plant-animal interactions. American
Naturalist 145: 163-191.

It contains a copy of the main data file exactly as used for this paper, as 
well as other accompanying files (see below).

Taxonomic arrangement follows: 
Cronquist, A. (1981). An integrated system of classification of flowering 
plants. Columbia University Press.

Nomenclature follows Stevens, P. F. (2001 onwards). Angiosperm Phylogeny 
Website. Version 8, June 2007. http://www.mobot.org/MOBOT/research/APweb/. 
This scheme follows: A.P.G. [= Angiosperm Phylogeny Group] II. 2003. An update 
of the Angiosperm Phylogeny Group classification for the orders and families 
of flowering plants: APG II. Bot. J. Linnean Soc. 141: 399-436.

Plant names and names of higher taxonomic categories have been checked with:
Mabberley, D.J. 1987. The plant-book. A portable dictionary of the higher
plants. Cambridge University Press, Cambridge, UK.

Please, contact me if you have suggestions, find errors, inconsistencies, or
any other bug in the file. As well, please let me know about your uses of this
data and send manuscripts and reprints when available. I'll be happy to help
you in any case, as far as I can.

I am periodically updating this data base since I started writing my PhD 
thesis more than 20 years ago. Thus, I'd like to receive suggestions for new
data sources and provide updated versions to those interested.

Please, use these data files for peaceful purposes, enjoy doing science with
them as I have enjoyed writing the paper quoted above, and learn as much as
you can with them. They are the result of splendid work by many people working
with plant-frugivore interactions and are embedded in papers reporting very
interesting results, descriptions and discussions on these interactions; 
please read them.

********************************** CONTENTS ***********************************
All files are plain ASCII text files, with the exception of SUMMARY and 
FRUBASE.xls.
Those with data have TABs as their field delimiters so they can be readily
imported in any statistical package or spreadsheet program. The FRUBASE.txt is
readily imported by any spreadsheet application. Please, contact me if you need
the files formatted in other ways (e.g., my original SAS datasets, or EXCEL
worksheets). 

1. README.txt - This file. Including a description of the variables and a 
   listing of the literature sources with the numeric codes.
2. Summary.doc - A summary file (originally intended to appear as an Appendix 
   in my 1995 paper) summarizing mean values for the main families and genera 
   in the data base. This is a Microsoft WORD (version 6.0) file, which can be
   read directly either by the Mac or Windows versions of the program.
3. REFS.txt - A long list with the source reference used for each species in 
   the data file. The file is TAB delimited and has a header line with variable 
   names: FAMILY, GENUS, SPECIES, NEWREF, and REFERENCE (authors and year).
4. FRUBASE.txt - The data file itself. Missing data are indicated by dots (.). 
   The file is TAB delimited and has a header line with variable names as in
   the list below. The file is sorted by FAMILY, GENUS, and SPECIES names, in 
   ascending order.
5. FRUBASE.xls - The data file itself, now in Excel format for spraedsheets. 
   See (4).

*******************************************************************************

Variable names and descriptions in FRUBASE

      CL        Class
      SCL       SubClass
      ORD       Order
      FAM       Family
      GEN       Genus
      SP        Species
      REF       Reference number - This is my maintenance code for updates.
      NEWREF    New Reference number - These are the refs numbers in the 
                                        files REFS and SUMMARY.
      FAMLAB    Family Label -  An 8-character label for family.
      GENLAB    Genus Label -   An 8-character label for genus.
      SPLAB     Species Label - An 8-character label for species.
      COD       Species code -  A 5-character code for the species.
      DISPCAT   Disperser type category - BIRDS, MIXED, MAMMALS.
      DISP      Disperser type - Finer categorization. Not yet completed.
                                  Needs revision.
      MEGAFAUNA Whether the fruit species is associated with dispersal 
                of seeds by megafauna.
      AREA      Geographic area - Major geographic areas of the data
                  sources.
                 MEurope: Mediterranean Europe (also includes Israel and
                          Morocco.
                 NEurope: Temperate and Northern Europe.
                 NAmerica: North America, excl. Southern Mexico.
                 NTAmerica: Neotropical America, incl. Southern Mexico.
                 Africa: Africa, south of Sahara.
                 Australasia: Australia, Malaysia, New Guinea, and whole
                              SouthEast Asia.
      HABIT     Growth habit - Tree, Shrub, Liana, Herb.
      FRUIT     Fruit type - Type of fruit. Not completed yet. 
                              Needs revision.
      COLOR     Fruit color - 
                 Black, Blue, Red, Orange, Yellow, Green, Brown, White
      COMPCOLOR Whether the fruit is monocolored, bicolored, or multicolored.
      LENG      Fruit length (mm)
      DIAM      Fruit diameter (mm)
      FRFM      Fruit fresh mass (g)
      PDM       Dry mass of pulp per fruit (g)
      SDM       Dry mass of seed(s) per fruit (g)
      SEEDS     Number of seeds per fruit
      SEEDM     Seed dry mass (g)
      RY        Relative yield of pulp (PDM/FRFM*100)
      KJG       Specific energy content of pulp (kJ/g)
      KJFR      Total energy content per fruit (kJ)
      PCW       Percent water content of fruit
      LIP       Proportion of lipids (per g dry pulp)
      PRO       Proportion of protein (per g dry pulp)
      NSC       Proportion of non-structural carbohydrates (per g dry pulp)
      ASH       Proportion of minerals (per g dry pulp)
      FIB       Proportion of acid-detergent fiber (per g dry pulp)

*******************************************************************************

REFERENCE LIST.

This is the literature list for references of data in the main FRUBASE data 
file.
The number corresponds to the codes included in variable NEWREF of the data 
file.
-------------------------------------------------------------------------------

1. Abrahamson, W.G. and C.R. Abrahamson. 1989. Nutritional quality of animal
dispersed fruits in Florida sandridge habitats. Bull. Torrey Bot. Club 116:
215-228.

2. Atramentowicz, M. 1988. La frugivorie opportuniste de trois marsupiaux
didelphides de Guyane. Rev. Ecol. (Terre Vie) 43: 47-57.

3. Beehler, B. 1983. Frugivory and polygamy in birds of paradise. Auk 100: 
1-12.

4. Crome, F.H.J. 1975. The ecology of fruit pigeons in tropical Northern
Queensland. Aust. Wildl. Res. 2: 155-185.

5. Debussche, M., J. Cortez and I. Rimbault. 1987. Variation in fleshy fruit
composition in the mediterranean region: the importance of ripening season,
life-form, fruit type, and geographical distribution. Oikos 49: 244-252.

6. Denslow, J.S. 1987. Fruit removal rates from aggregated and isolated bushes
of the red elderberry, Sambucus pubens. Can. J. Bot. 65: 1229-1235.

7. Dinerstein, E. 1986. Reproductive ecology of fruit bats and the seasonality
of fruit production in a Costa Rican cloud forest. Biotropica 18: 307-318.

8. Dowsett-Lemaire, F. 1988. Fruit choice and seed dissemination by birds and
mammals in the evergreen forests of Upland Malawi. Rev. Ecol. (Terre Vie) 43:
251-286.

9. Erard, C., M. Thery and D. Sabatier. 1989. Regime alimentaire de Rupicola
rupicola (Cotingidae) en Guyane française. Relations avec la frugivorie et la
zoochorie. Rev. Ecol. (Terre Vie) 44: 47-74.

10. Eriksson, O. and J. Ehrlen. 1991. Phenological variation in fruit
characteristics in vertebrate-dispersed plants. Oecologia 86: 463-470.

11. Estrada, A., R. Coates-Estrada and C. Vazquez-Yanes. 1984. Observations on
fruiting and dispersers of Cecropia obtusifolia at Los Tuxtlas, Mexico.
Biotropica 16: 315-318.

12. Foster, M.S. 1977. Ecological and nutritional effects of food scarcity on a
tropical frugivorous bird and its fruit source. Ecology 58: 73-85.

13. Foster, M.S. and R.W. McDiarmid. 1983. Nutritional value of the aril of
Trichilia cuneata, a bird-dispersed fruit. Biotropica 15: 26-31.

14. French, K. 1991. Characteristics and abundance of vertebrate-dispersed
fruits in temperate wet sclerophyll forest in southeastern Australia.
Australian Journal of Ecology 16: 1-13.

15. Frost, P.G.H. 1980. Fruit-frugivore interactions in a South African coastal
dune forest. pp.: 1179-1184 in  Editor. Acta XVII Cong. Int. Orn. 

16. Godschalk, S.K.B. 1983. A biochemical analysis of the fruit of Tapinanthus
leendertziae. S. Afr. J. Bot. 2: 42-45.

17. Herrera, C.M. 1987. Vertebrate-dispersed plants of the iberian peninsula: a
study of fruit characteristics. Ecol. Monogr. 57: 305-331.

18. Hladik, A. and C.M. Hladik. 1969. Rapports trophiques entre vegetation et
primates dans la foret de Barro Colorado (Panama). Terre Vie 23: 25-117.

19. Howe, H.F. 1981. Dispersal of neotropical nutmeg (Virola sebifera) by 
birds. Auk 98: 88-98.

20. Howe, H.F. and Kerckhove Vande G.A. 1981. Removal of wild nutmeg (Virola
surinamensis) crops by birds. Ecology 62: 1093-1106.

21. Izhaki, I. and U.N. Safriel. 1989. Why are there so few exclusively
frugivorous birds? Experiments on fruit digestibility. Oikos 54: 23-32.

22. Johnson, R.A., M.F. Willson, J.N. Thompson and R.I. Bertin. 1985. 
Nutritional values of wild fruits and consumption by migrant frugivorous birds.
Ecology 66: 819-827.

23. Jordano, P. 1983. Fig-seed predation and dispersal by birds. Biotropica 15:
38-41.

24. Keeler-Wolf, T. 1988. Fruit and consumer differences in three species of
trees shared by Trinidad and Tobago. Biotropica 20: 38-48.

25. Lambert, F. 1989. Fig-eating by birds in a Malaysian lowland rain forest.
J. Trop. Ecol. 5: 401-412.

26. Levey, D.J. and W.H. Karasov. 1989. Digestive responses of temperate birds
switched to fruit or insect diets. Auk 106: 675-686.

27. McDiarmid, R.W., R.E. Ricklefs and M.S. Foster. 1977. Dispersal of
Stemmadennia donnell-smithii (Apocyanaceae) by birds. Biotropica 9: 9-25.

28. McPherson, J.M. 1987. A field study of winter fruit preferences of Cedar
waxwings. Condor 89: 293-306.

29. Morrison, D.W. 1980. Efficiency of food utilization by fruit bats. 
Oecologia (Berl.) 45: 270-273.

30. Nagy, K.A. and K. Milton. 1979. Aspects of dietary quality, nutrient
assimilation and water balance in wild howler monkeys (Alouatta palliata). 
Oecologia (Berl.) 39: 249-258.

31. O'Dowd, D.J. and P.S. Lake. 1991. Red crabs in rain forest, Christmas 
Island: removal and fate of fruits and seeds. J. Trop. Ecol. 7: 113-122.

32. Pannell, C.M. and M.J. Koziol. 1987. Ecological and phytochemical diversity
of arillate seeds in Aglaia (Meliaceae): a study of vertebrate dispersal in 
tropical trees. Phil. Trans. R. Soc. Lond. B 316: 303-333.

33. Piper, J.K. 1986. Seasonality of fruit characters and seed removal by 
birds. Oikos 46: 303-310.

34. Restrepo, C. 1987. Aspectos ecologicos de la diseminacion de cinco especies
de muerdagos por aves. Humboldtia 1: 65-116.

35. Rogers, M.E., F. Maisels, E.A. Williamson, M. Fernandez and C.E.G. Tutin.
1990. Gorilla diet in the Lope Reserve, Gabon: a nutritional analysis. 
Oecologia (Berl.) 84: 326-339.

36. Sherburne, J.A. 1972. Effects of seasonal changes in the abundance and
chemistry of the fleshy fruits of northeastern woody shrubs on patterns of 
exploitation by frugivorous birds. Ph. D. Thesis, Cornell Univ. 157 pp.

37. Snow, B.K. 1977. Territorial behavior and courtship of the male three-
wattled bellbird. Auk 94: 623-645.

38. Snow, B.K. 1979. The oilbirds of Los Tayos. Wilson Bull. 91: 457-461.

39. Snow, D.W. 1962. The natural history of the Oilbird, Steatornis caripensis,
in Trinidad, W.I. Part 2. Population, breeding ecology and food. Zoologica 47:
199-221.

40. Snow, D.W. 1981. Tropical frugivorous birds and their food plants: a world
survey. Biotropica 13: 1-14.

41. Sourd, C. and A. Gauthier-Hion. 1986. Fruit selection by a forest guenon. 
J. Anim. Ecol. 55: 235-244.

42. Thomas, D.W. 1984. Fruit intake and energy budgets of frugivorous bats.
Physiol. Zool. 57: 457-467.

43. Viljoen, S. 1983. Feeding habits and comparative feeding rates of three
Southern African arboreal squirrels. S. Afr. J. Zool. 18: 378-387.

44. Walsberg, G.E. 1975. Digestive adaptations of Phainopepla nitens associated
with the eating of mistletoe berries. Condor 77: 169-174.

45. Wheelwright, N.T., W.A. Haber, K.G. Murray and C. Guindon. 1984. Tropical
fruit-eating birds and their food plants: a survey of a Costa Rican lower 
montane forest. Biotropica 16: 173-192.

46. White, S.C. 1974. Ecological aspects of growth and nutrition in tropical
fruit-eating birds. Ph. D. Thesis, Univ. of Pennsylvania. 145 pp.

47. Williams, C.K. 1982. Nutritional properties of some fruits eaten by the
possum Trichosurus vulpecula in a new zealand broadleaf-podocarp forest. New 
Zealand J. Ecol. 5: 16-20.

48. Worthington, A.H. 1989. Adaptations for avian frugivory: assimilation
efficiency and gut transit time of Manacus vitellinus and Pipra mentalis. 
Oecologia (Berl.) 80: 381-389.

49. Herrera, C.M. and P. Jordano, unpublished data.

50. Pedro Jordano, unpublished data.

********************************* CONTACTING **********************************
Contact me at:

Pedro Jordano
Departamento de Ecologia Integrativa
Estacion Biologica de Doñana, CSIC
Isla de La Cartuja
Avda. Americo Vespucio, S/N
41092 Sevilla, Spain

Phone: +34 95 4466700 ext 1467 (voice)
       +34 95 4621125 (fax)
       
e-mail: jordano@ebd.csic.es
web: html://ebd10.ebd.csic.es
tweeter: @pedro_jordano
***************************** ACKNOWLEDGEMENTS ********************************
This data base is the result of many hours of work compiling names and numbers 
from a very sparse literature. I've benefited from the help of Myriam Marquez,
Alicia Prieto and Rocio Requerey, who aided carefully with data checking 
several times. Carlos M. Herrera helped with unpublished data and by providing 
literature sources. F.H.J. Crome also provided his original data just at the 
start of this project. 
Computer time and facilities were kindly provided by the Centro de Informatica 
Cientifica de Andalucia. Financial support was from the Spanish Direccion 
General de Investigacion Cientifica y Tecnica, projects PB-87-0452 and 
PB-91-0114.
********************************** HISTORY ************************************
version 1.- 16 April 1983. Only 219 species.
version 1.5 - 23 December 1991. Added many species with information on fruit
              size only and completed the literature survey up to 1991.
version 1.9 - 4 May 1994. Prepared the first version of this package. Recoding
              of the reference numbers to accomodate the inclusion of the
              appendix.
version 2.0 - 12 January 1995. Added the SUMMARY file and minor changes to this
              file.
version 3.0 - A major update to the dataset, adding new variables such as fruit
              color, growth habit, etc. Major addition of species. Started 
              revision 12 Feb 2003.
version 4.0 - A major update to the dataset, with revision of the taxonomic
              arrangement according to: Stevens, P. F. (2001 onwards). 
              Angiosperm Phylogeny Website. Version 8, June 2007. 
              http://www.mobot.org/MOBOT/research/APweb/. This scheme follows: 
              A.P.G. [= Angiosperm Phylogeny Group] II. 2003. An update of the 
              Angiosperm Phylogeny Group classification for the orders and 
              families of flowering plants: APG II. Bot. J. Linnean Soc. 141: 
              399-436.
              Revision completed 25 November 2007.
version 5.0 - Working on a new updated dataset based on the Git repository.
              Thorough checking the species names and taxonomy with R package
              taxize. Adding new species to dataset from updated sources.
              WORKING ON IT!!!
*******************************************************************************

Best wishes, and happy computing!
pedro

