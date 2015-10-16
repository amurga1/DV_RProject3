require("ggplot2")
require(extrafont)
ggplot() + 
  coord_cartesian() + 
  scale_x_continuous() +
  scale_y_continuous() +
  facet_grid(.~AGROUP, labeller=label_both) + 
  labs(title='Revenue and Unemployment') +
  labs(x="Revenue", y=paste("Unemployment Rate (%)")) +
  layer(data=dw1, 
        mapping=aes(x=as.numeric(as.character(REVENUE)), y=as.numeric(as.character(RATEUNEMPLO))), 
        stat="identity", 
        stat_params=list(), 
        geom="point",
        geom_params=list(), 
        position=position_jitter(width=0.3, height=0)
  )
