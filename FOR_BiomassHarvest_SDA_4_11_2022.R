install.packages("soilDB")
install.packages("dplyr")

library(soilDB)
library(dplyr)

#Dominant Component
x <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                            method = "Dominant Component",
                            areasymbols = SDA_query("SELECT areasymbol FROM legend WHERE areasymbol LIKE 'WI%'")$areasymbol)


#write Dominant Component CSV
write.csv(x, "C:/Paolucci/BiomassHarvest/BioHarvest_DominantComponent_4_11_2022.csv")

#Dominant Condition
# SDA Query for Dominant Condition 
WI001<- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                            method = "Dominant Condition",
                            areasymbols = 'WI001')

WI003 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                            method = "Dominant Condition",
                            areasymbols = 'WI003')

WI005 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI005')

WI007 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI007')

WI009 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI009')

WI011 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI011')

WI013 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI013')

WI017 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI017')

WI019 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI019')

WI021 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI021')

WI023 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI023')

WI025 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI025')

WI027 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI027')

WI029 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI029')

WI031 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI031')

WI033 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI033')

WI035 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI035')

WI037 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI037')

WI039 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI039')

WI041 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI041')

WI043 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI043')

WI045 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI045')

WI047 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI047')

WI049 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI049')

WI051 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI051')

WI053 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI053')

WI055 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI055')

WI057 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI057')

WI061 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI061')

WI063 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI063')

WI065 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI065')

WI067 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI067')

WI069 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI069')

WI073 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI073')

WI075 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI075')

WI077 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI077')

WI078 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI078')

WI081 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI081')

WI083 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI083')

WI085 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI085')

WI087 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI087')

WI089 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI089')

WI091 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI091')

WI093 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI093')

WI095 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI095')

WI097 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI097')

WI099 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI099')

WI103 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI103')

WI105 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI105')

WI107 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI107')

WI109 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI109')

WI111 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI111')

WI113 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI113')

WI115 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI115')

WI117 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI117')

WI119 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI119')

WI121 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI121')

WI123 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI123')

WI125 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI125')

WI127 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI127')

WI129 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI129')

WI131 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI131')

WI135 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI135')

WI137 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI137')

WI139 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI139')

WI141 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI141')

WI600 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI600')

WI601 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI601')

WI602 <- get_SDA_interpretation(c("FOR-Biomass Harvest (WI)"),
                                method = "Dominant Condition",
                                areasymbols = 'WI602')


# link two outputs 
x.2 <- bind_rows(WI001,WI003,WI005,WI007,WI009,WI011,WI013,WI017,WI019,WI021,WI023,WI025,WI027,WI029,WI031,WI033,WI035,WI037,WI039,WI041,WI043,WI045,WI047,WI049,WI051,WI053,WI055,WI057,WI061,WI063,WI065,WI067,WI069,WI073,WI075,WI077,WI078,WI081,WI083,WI085,WI087,WI089,WI091,WI093,WI095,WI097,WI099,WI103,WI105,WI107,WI109,WI111,WI113,WI115,WI117,WI119,WI121,WI123,WI125,WI127,WI129,WI131,WI135,WI137,WI139,WI141,WI600,WI601,WI602)

#write Dominant Condition CSV
write.csv(x.2, "C:/Paolucci/BiomassHarvest/BioHarvest_DominantCondition_4_11_2022.csv")




