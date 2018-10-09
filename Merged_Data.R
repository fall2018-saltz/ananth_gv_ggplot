
merged_data <- merge(us_arrest, us_census, by.x = "row.names", by.y = c("NAME"), all = TRUE)

merged_data


library(ggplot2)
plot_population <- qplot(merged_data$POPESTIMATE2017, geom="histogram")
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

