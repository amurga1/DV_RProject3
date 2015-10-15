dr2 <- dplyr::left_join(df5, df4, by=c("STATE" = "ABBREVIATION"))
tmp1 <- dr2

dr3 <- dplyr::inner_join(dr2, df2, by=c("STATE.y" = "STATE"))
View(dr3)
tmp2 <- dr3

dw2 <- tmp2 %>% select(STATE, HOSPITAL_NAME, POPULATION_MILLION_, REVENUE) %>% group_by(STATE) %>% summarize(num_hospitals = n_distinct(HOSPITAL_NAME), population = mean(POPULATION_MILLION_), revenue = mean(REVENUE))

