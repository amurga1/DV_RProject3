# Make an inner join
require("jsonlite")
require(dplyr)
dr1 <- dplyr::inner_join(df1, df2, by="STATE") 

tmp <- dr1

dw1 <- tmp %>% select(STATE, AGROUP, RATEUNEMPLO, REVENUE) %>% filter(AGROUP %in% c('Women','Men'))%>%arrange(desc(STATE))
dw1
