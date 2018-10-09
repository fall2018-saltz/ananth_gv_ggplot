

#3)	Create a merged dataframe -- with the attributes from both dataframes

merged_data <- merge(us_arrest, us_census, by.x = "row.names", by.y = c("NAME"), all = TRUE)       # Merge data from us_census and us_arrest got as input from previous     
                                                                                                # modules using merge function on top of row.name and State Name.



# Step B: Explore the Data – Understanding distributions

library(ggplot2)                                                                                           #use library by importing ggplot2
plot_population <- qplot(merged_data$POPESTIMATE2017, geom="histogram")                                    #


plot_murder_rate <- qplot(merged_data$Murder, geom="histogram",
      bandwidth = 0.5,
      main = "Histogram for Population",
      xlab = "Murder",
      ylab = "count",
      fill = I("blue"),
      col = I("red"),
      alpha = I(.2),
      xlim = c(0, 20))
      
      
population_box_plot <- ggplot(data = merged_data, aes(x = "Population", y = merged_data$POPESTIMATE2017)) + 
  geom_boxplot() # I set the y axis scale so the plot looks better

murder_box_plot <- ggplot(data = merged_data, aes(x = "Population", y = merged_data$Murder)) + 
  geom_boxplot() # I set the y axis scale so the plot looks better
