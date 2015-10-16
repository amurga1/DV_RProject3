ggplot(data=tmp6, aes(x=count, y=POP_EMPLOYED)) +
  geom_point( size=4, shape=21, fill="green", colour = "green") +
  labs(title='Population Employed and Number of Hospitals') +
  labs(x=paste("Number of Hospitals"), y=paste("Population Employed"))
