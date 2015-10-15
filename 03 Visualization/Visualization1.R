require("ggplot2")
ggplot(data = dw1, 
       mapping = aes(x=STATE, y=RATEUNEMPLO, color = AGROUP, fill = AGROUP)) +
  scale_x_discrete() +
  scale_y_continuous() +
geom_bar(position = "dodge", stat="identity") +
  (title="width = .5") +
  labs(title='Average Raised Amount pr Category') +
  labs(x=paste("STATE"), y=paste("rateunemploy")) +
  layer(geom = "bar",
        position = "dodge",
        stat = "identity")
