dr2 <- dplyr::left_join(df5, df4, by=c("STATE" = "ABBREVIATION"))
tmp1 <- dr2

tmp4 <- df1

tmp5 <- tmp4 %>% select(STATE, AGROUP, POP_EMPLOYED) %>% filter(AGROUP == 'Total')
View(tmp5)

#Join the tmp5 (total population employed by state) with the hospital data
dr3 <- dplyr::full_join(dr2, tmp5, by=c("STATE.y" = "STATE"))
View(dr3)
