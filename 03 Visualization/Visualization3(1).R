ggplot(data = tmp6, 
       mapping = aes(x=STATE, y=POP_EMPLOYED, color = STATE, fill = STATE)) + geom_bar(position = "dodge", stat="identity") +
  labs(title='Population Employed Per State') +
  labs(x=paste("State"), y=paste("Population Employed")) +
  layer(geom = "bar",
        position = "dodge",
        stat = "identity",
        data = tmp6, 
        mapping = aes(x = STATE, color =STATE))