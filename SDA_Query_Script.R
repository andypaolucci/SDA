library(soilDB)
library(sp)
library(rgdal)
library(raster)
library(rgeos)
library(maps)

#Read csv with MUKEYS. Spreadsheet should have one column labeled MUKEY
MUs <- read.csv(file='C:/Paolucci/Projects/MLRA15_ecosite_concepts/85e/85e_Good.csv')

# Inspect first couple rows of  spreadsheet 
head(MUs)

#make list of MUKEYS
MUs$MUKEY -> MUKEYs

#format MUKEYS for SQL statement
x1 <- format_SQL_in_statement(MUKEYs)

#SDA query
q1 <- paste("SELECT G.MupolygonWktWgs84 as geom, musym, mapunit.mukey, muname
FROM mapunit
CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
WHERE mukey IN ", x1)
res1 <- SDA_query(q1)

#check
head(res1)

#Get spatial data
s <- processSDA_WKT(res1)

# Inspect map. You will have to adjust xlim, ylim and change state to west virginia 
par(mar=c(0,0,0,0))
map('county', 'California', xlim=c(-123.25, -118.75), ylim=c(36.5, 39))
plot(s, add=TRUE, col='royalblue', border='royalblue')

# save to SHP. Specify folder (dsn) and layer name (layer)
writeOGR(s, dsn='C:/Paolucci/Projects/SpecifyFolderHere', layer='NameLayerHere', driver='ESRI Shapefile')

#### 2 ####
#Read csv with MUKEYS
MUs2 <- read.csv(file='C:/Paolucci/Projects/CZSS/2.csv')
#make list of MUKEYS
MUs2$MUKEY -> MUKEYs2
#format MUKEYS for SQL statement
x2 <- format_SQL_in_statement(MUKEYs2)
#SDA query
q2 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x2)
res2 <- SDA_query(q2)
#check
head(res2)
#Get spatial data
s2 <- processSDA_WKT(res2)

#### 3 ####
#Read csv with MUKEYS
MUs3 <- read.csv(file='C:/Paolucci/Projects/CZSS/3.csv')
#make list of MUKEYS
MUs3$MUKEY -> MUKEYs3
#format MUKEYS for SQL statement
x3 <- format_SQL_in_statement(MUKEYs3)
#SDA query
q3 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x3)
res3 <- SDA_query(q3)
#check
head(res3)
#Get spatial data
s3 <- processSDA_WKT(res3)

#### 4 ####
#Read csv with MUKEYS
MUs4 <- read.csv(file='C:/Paolucci/Projects/CZSS/4.csv')
#make list of MUKEYS
MUs4$MUKEY -> MUKEYs4
#format MUKEYS for SQL statement
x4 <- format_SQL_in_statement(MUKEYs4)
#SDA query
q4 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x4)
res4 <- SDA_query(q4)
#check
head(res4)
#Get spatial data
s4 <- processSDA_WKT(res4)

#### 5 ####
#Read csv with MUKEYS
MUs5 <- read.csv(file='C:/Paolucci/Projects/CZSS/5.csv')
#make list of MUKEYS
MUs5$MUKEY -> MUKEYs5
#format MUKEYS for SQL statement
x5 <- format_SQL_in_statement(MUKEYs5)
#SDA query
q5 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x5)
res5 <- SDA_query(q5)
#check
head(res5)
#Get spatial data
s5 <- processSDA_WKT(res5)

#### 6 ####
#Read csv with MUKEYS
MUs6 <- read.csv(file='C:/Paolucci/Projects/CZSS/6.csv')
#make list of MUKEYS
MUs6$MUKEY -> MUKEYs6
#format MUKEYS for SQL statement
x6 <- format_SQL_in_statement(MUKEYs6)
#SDA query
q6 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x6)
res6 <- SDA_query(q6)
#check
head(res6)
#Get spatial data
s6 <- processSDA_WKT(res6)

#### 7 ####
#Read csv with MUKEYS
MUs7 <- read.csv(file='C:/Paolucci/Projects/CZSS/7.csv')
#make list of MUKEYS
MUs7$MUKEY -> MUKEYs7
#format MUKEYS for SQL statement
x7 <- format_SQL_in_statement(MUKEYs7)
#SDA query
q7 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x7)
res7 <- SDA_query(q7)
#check
head(res7)
#Get spatial data
s7 <- processSDA_WKT(res7)

#### 8 ####
#Read csv with MUKEYS
MUs8 <- read.csv(file='C:/Paolucci/Projects/CZSS/8.csv')
#make list of MUKEYS
MUs8$MUKEY -> MUKEYs8
#format MUKEYS for SQL statement
x8 <- format_SQL_in_statement(MUKEYs8)
#SDA query
q8 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x8)
res8 <- SDA_query(q8)
#check
head(res8)
#Get spatial data
s8 <- processSDA_WKT(res8)

#### 9 ####
#Read csv with MUKEYS
MUs9 <- read.csv(file='C:/Paolucci/Projects/CZSS/9.csv')
#make list of MUKEYS
MUs9$MUKEY -> MUKEYs9
#format MUKEYS for SQL statement
x9 <- format_SQL_in_statement(MUKEYs9)
#SDA query
q9 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x9)
res9 <- SDA_query(q9)
#check
head(res9)
#Get spatial data
s9 <- processSDA_WKT(res9)

#### 10 ####
#Read csv with MUKEYS
MUs10 <- read.csv(file='C:/Paolucci/Projects/CZSS/10.csv')
#make list of MUKEYS
MUs10$MUKEY -> MUKEYs10
#format MUKEYS for SQL statement
x10 <- format_SQL_in_statement(MUKEYs10)
#SDA query
q10 <- paste("SELECT G.MupolygonWktWgs84 as geom, mapunit.mukey, muname
           FROM mapunit
           CROSS APPLY SDA_Get_MupolygonWktWgs84_from_Mukey(mapunit.mukey) as G
           WHERE mukey IN ", x10)
res10 <- SDA_query(q10)
#check
head(res10)
#Get spatial data
s10 <- processSDA_WKT(res10)

#### PLOT ####
#Combine
Combo <-rbind (s1, s2, s3, s4, s5, s6, s7, s8, s9, s10)

# save to SHP
writeOGR(s1, dsn='C:/Paolucci/Projects/CZSS/CZSS_Soils', layer='test11', driver='ESRI Shapefile')

# ESTUARY POINT FILE CREATION with RANKS
# Read estuaries shapefile
mu <- readOGR(dsn='C:/Paolucci/Projects/CZSS/Geodata', layer='CA_Tidal_Wetlands')

head(mu)
# Get attribute data in dataframe for later
mu.df <- as.data.frame(mu)

#compute centroids of each polygon
trueCentroids <- gCentroid(mu,byid=TRUE)
coordinates(trueCentroids)-> coords

#Create spatial points data frame
test <- SpatialPointsDataFrame(coords, mu.df, proj4string=CRS("+proj=tmerc +lat_0=31.96 +lon_0=-121.6 +k=1 +x_0=390000 +y_0=0 +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0"))

#write shapefile
writeOGR(test, dsn='C:/Paolucci/Projects/CZSS/CZSS_Soils', layer='CA_Tidal_Wetlands_Points', driver='ESRI Shapefile', overwrite_layer=TRUE)
head(test)
#read shapefile
Points <-readOGR(dsn='C:/Paolucci/Projects/CZSS/CZSS_Soils', layer='CA_Tidal_Wetlands_Points')

head(Points)
#read csv
Ranks <- read.csv(file='C:/Paolucci/Projects/CZSS/Ranks_W_Notes.csv')
head(Ranks)
#merge
merged <- merge(Points, Ranks, by.x="OBJECTID", by.y="INDEX")              

head(merged)
#save new shapefile
writeOGR(merged, dsn='C:/Paolucci/Projects/CZSS/CZSS_Soils', layer='CA_Tidal_Wetlands_Points', driver='ESRI Shapefile', overwrite_layer=TRUE)
