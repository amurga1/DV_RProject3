ggplot(data=dw2, aes(x=population, y=num_hospitals)) +
         geom_point( size=4, shape=21, fill="blue", colour = "blue") +
        labs(title='Hospitals and Population by State') +
        labs(x=paste("Population(millions)"), y=paste("Number of Hospitals per State"))
