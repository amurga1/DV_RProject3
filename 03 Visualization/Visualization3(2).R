ggplot(data = tmp6, 
       mapping = aes(x=STATE, y=count, color = STATE, fill = STATE)) + geom_bar(position = "dodge", stat="identity") +
  labs(title='Number of Hospitals per State') +
  labs(x=paste("State"), y=paste("Number of Hospitals")) +
  layer(geom = "bar",
        position = "dodge",
        stat = "identity",
        data = tmp6, 
        mapping = aes(x = STATE, color =STATE))