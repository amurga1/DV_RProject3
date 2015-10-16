require("jsonlite")
require("RCurl")
require("dplyr")
# Change the USER and PASS below to be your UTEid
df2 <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from USGS_STATE_2010"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDBF15DV.usuniversi01134.oraclecloud.internal', USER='cs329e_ams6624', PASS='orcl_ams6624', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
summary(df2)
