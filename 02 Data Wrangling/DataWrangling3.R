dr4 <- dplyr::left_join(df5, df4, by=c("STATE" = "ABBREVIATION"))

tmp4 <- df1

tmp5 <- tmp4 %>% select(STATE, AGROUP, POP_EMPLOYED) %>% filter(AGROUP == 'Total')
View(tmp5)

#Join the tmp5 (total population employed by state) with the hospital data
dr5 <- dplyr::full_join(dr4, tmp5, by=c("STATE.y" = "STATE"))
View(dr5)

tmp6 <- dr5 %>% select(HOSPITAL_NAME, STATE, STATE.y, POP_EMPLOYED )%>% group_by(STATE, STATE.y, POP_EMPLOYED) %>% summarize(count = n_distinct(HOSPITAL_NAME))

View(tmp6)
