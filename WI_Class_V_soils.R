
# Install latest version of AQP and soilDB from github
remotes::install_github("ncss-tech/aqp", dependencies=FALSE, upgrade=FALSE, build=FALSE)
remotes::install_github("ncss-tech/soilDB", dependencies=FALSE, upgrade=FALSE, build=FALSE)


# load required packages. If you dont have them, first install them using install.packages('package name') 
library(aqp)
library(soilDB)
library(sp)
library(rgdal)
library(plyr)
library(raster)
library(rgeos)


# SDA query text to load components in Wisconsin with nirrcapcl 5 assigned
q <- "SELECT 
component.mukey, cokey, comppct_r, compname, nirrcapcl, taxclname, 
taxorder, taxsuborder, taxgrtgroup, taxsubgrp, areasymbol
FROM legend
INNER JOIN mapunit ON mapunit.lkey = legend.lkey
INNER JOIN component ON component.mukey = mapunit.mukey
WHERE legend.areasymbol LIKE 'WI%'
AND nirrcapcl = '5'"

# run the query
res <- SDA_query(q)

# check
head(res)

# get list of mukeys with Wisconsin soils that have component with nirr capability class 5 assigned
a <- as.character(unique(res$mukey))

# fetch spatial data using list of map unit keys
x <- fetchSDA_spatial(a, add.fields="muname")
plot(x)

# write to ESRI shapefile. specify path where shapefile is saved. 
writeOGR(x, dsn='C:/geodata/ProjectData', layer='WI_classV_soils.shp', driver='ESRI Shapefile')
