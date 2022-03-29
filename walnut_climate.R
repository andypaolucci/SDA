library(soilDB) 
library(dplyr, warn.conflicts = FALSE)

q <- "SELECT legend.lkey, mapunit.mukey, cokey, comppct_r,
             airtempa_r, ffd_r, map_r FROM component
        INNER JOIN mapunit ON component.mukey = mapunit.mukey
        INNER JOIN legend ON mapunit.lkey = legend.lkey
        WHERE areasymbol LIKE 'WI%'"
components <- SDA_query(q)

# check query result
head(components)

# do dominant component aggregation
result <- components %>%
  group_by(lkey, mukey) %>%
  summarise(across(airtempa_r:map_r, function(x) x[which(comppct_r == max(comppct_r))]))

# verify 1:1
all(result$mukey == unique(result$mukey))

write.csv(result, file = "C:/Paolucci/Projects/BlackWalnut/WI_maat_ffd_map_table.csv")  

