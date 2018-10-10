
#Step D: Explore Murders – scatter chart

#12)Generate a scatter plot – have population on the X axis, the percent over 18 on the y axis, and the size & color represent the murder rate

library(ggplot2)                # use library ggplot to import necessary functions.
scatter_plot <- ggplot(merged_data, aes(x=merged_data$POPESTIMATE2017, y=merged_data$PCNT_POPEST18PLUS, size=merged_data$Murder)) +   # use ggplot to set necessary information such as x axis y axis, and the size of the plots which varies on the magnitude of murder rate
  geom_point(shape=19, fill="blue", color="darkred") + ggtitle("Explore Murders") +   # geom_point attribute is used to declare the shape, color and fill of the plots desired
  labs(x="Population",y="Percentage of Population above 18") +  # Axes labels are declared using labs
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +   #Text properties are declared usign necessary parameters.
  theme(axis.title = element_text(color="#666666", face="bold", size=15))
