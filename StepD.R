
#Step D: Explore Murders – scatter chart

#12)Generate a scatter plot – have population on the X axis, the percent over 18 on the y axis, and the size & color represent the murder rate

library(ggplot2) 
scatter_plot <- ggplot(merged_data, aes(x=merged_data$POPESTIMATE2017, y=merged_data$PCNT_POPEST18PLUS, size=merged_data$Murder)) +
  geom_point(shape=19, fill="blue", color="darkred") + ggtitle("Explore Murders") +
  labs(x="Population",y="Percentage of Population above 18") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))
