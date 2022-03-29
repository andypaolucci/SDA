
library(aqp)
library(soilDB)
library(sp)
library(rgdal)
library(plyr)
library(raster)
library(rgeos)

q <- "SELECT 
component.mukey, component.cokey, comppct_r, compname, taxclname, 
taxorder, taxsuborder, taxgrtgroup, taxsubgrp, ecoclassid, ecoclassname
FROM legend
INNER JOIN mapunit ON mapunit.lkey = legend.lkey
INNER JOIN component ON component.mukey = mapunit.mukey
INNER JOIN coecoclass ON coecoclass.cokey = component.cokey
WHERE legend.areasymbol = 'CA630'"

# run the query
res <- SDA_query(q)

# check
head(res)

# calculate dominant ecosite using ddply
mu.dom.eco <- function(i) {
 eco <- sum(i$whc, weights=i$wt) # safely compute wt. mean water storage
  data.frame(whc=whc) # return wt. mean water storage
}

# aggregate by component, retaining map unit keys
co.eco <- ddply(res, c('mukey', 'ecoclassid'), comppct_r)

# aggregate by map unit
mu.whc <- ddply(co.eco, 'mukey', mu.mean.whc)

# check: there should be a single water storage value per map unit key
head(mu.whc)


# Alternate method using fetchSDA. Gets  all component data
#res = fetchSDA(WHERE = "areasymbol = 'CA630'", duplicates=TRUE)
#head(res)

