# Make an inner join
require("jsonlite")
require(dplyr)
df3 <- dplyr::inner_join(df1, df2, by="STATE") 

tmp <- df3
dw1 <- tmp %>% select(STATE, AGROUP, RATEUNEMPLO) %>% filter(AGROUP %in% c('Women','Men'))%>%arrange(desc(RATEUNEMPLO))
dw1
