
# Step B: Explore the Data – Understanding distributions

library(ggplot2)                                                                                #use ggplot2 library by importing ggplot2

#4)	Create a histogram using GGPLOT for the population and a different histogram for the murder rate

plot_population <- qplot(merged_data$POPESTIMATE2017, geom="histogram")                         # use qplot function to plot population distribution on a histogram. geom is used to represent what type of graph is used to display            

plot_murder <- qplot(merged_data$Murder, geom="histogram")                                        # use qplot function to plot murder distribution on a histogram. geom is used to represent what type of graph is used to display                   

plot_assault <- qplot(merged_data$Assault, geom="histogram")                                     # use qplot function to plot assault distribution on a histogram. geom is used to represent what type of graph is used to display            

plot_rape <- qplot(merged_data$Rape, geom="histogram")                                           # use qplot function to plot rape distribution on a histogram. geom is used to represent what type of graph is used to display            



# The Parameters to be adjusted for other histograms to look fine are to add attributes that make the histogram readable. Currently the histogram is not distributed in the right way 
# due to bucket sizing and range. By adding the labels, bandwidth, fill, title, range and color- histograms are better represented as below.

plot_murder_rate_labelled <- qplot(merged_data$Murder, geom="histogram",
                                   bandwidth = 0.5,                                                                       
                                   main = "Histogram for Population",                     # Title
                                   xlab = "Murder",                                       # X axis label
                                   ylab = "count",                                        # Y axis label
                                   fill = I("blue"),                                      # Color fill for histogram
                                   col = I("red"),                                        # Histogram bar boundary color
                                   alpha = I(.2),
                                   xlim = c(0, 20))                                       # Range Limit x range






#5)	Create a boxplot for the population, and a different boxplot for the murder rate.


population_box_plot <- ggplot(data = merged_data, aes(x = "Population", y = merged_data$POPESTIMATE2017)) +         # use ggplot function to declare varibles to be plotted such as x axis and y axis with respective dataframe columns
  geom_boxplot() # geom_boxplot is used to reresent the variables declared in the box plot format

murder_box_plot <- ggplot(data = merged_data, aes(x = "Murder Rate", y = merged_data$Murder)) +                      # use ggplot function to declare varibles to be plotted such as x axis and y axis with respective dataframe columns
  geom_boxplot() # geom_boxplot is used to reresent the variables declared in the box plot format






#6)	Create a block comment explaining which visualization (boxplot or histogram) you thought was more helpful (explain why)

# I feel both the representations are useful at times. It depends upon what we are looking for. Box plots seem more helpful if we are looking at medians, percentiles and aggregations. It gives us an overall Understanding
# of the data in a fairly simple manner. If i wanted calculations such as quartile distribution on population or any paramenter, i would choose box plot.

#However if i wanted a graphical distribution of population in the assending or descending order for the entire data set, histograms are prefarable. It conveys more information to the viewer giving him an understanding of the distribution easily. Histograms can be used for categorical comparisions parallely. I could have distributions for male and femal categorical
# variables and also have the count displayed, which makes it easy for data decisions. 





