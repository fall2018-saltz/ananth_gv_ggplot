
#Step C: Which State had the Most Murders – bar charts

#7)	Calculate the number of murders per state

library(ggplot2)                                                 # Load library ggplot2

library(dplyr)                                                   # use library dplyr to select columns using Name. This can also be done directly using datframe[].
df1 <- select(merged_data, POPESTIMATE2017)                      # select function to select the required column from the dataframe.
df2 <- (merged_data$POPESTIMATE2017/100000)*merged_data$Murder   # calculate the murder per state - Given murder per 100000 population, Number of Murders per state is calculated by dividing state population by 100000 and multiplying by the corresponding murder rate of the state.

# result is stored in the dataframe df2

merged_data$NumberofMurders <- round(df2, digits = 0)            # number of murders for every state is merged with original datframe creating new column NumberofMurders
                                                                 # round is used to round the number of murders to whole number.
#8)	Generate a bar chart, with the number of murders per state

bar_chart_murder_state <- ggplot() + geom_col(data = merged_data, aes(x = factor(Row.names), y = merged_data$NumberofMurders)) +       #use ggplot and geom_col fucntion to create bar chart. Pass dataframe and declare x and y axis variables namely State names and Number of Murders.
  ggtitle("Total Murders") +            #Use ggtitle to declare title of the chart
  labs(x="State",y="Murders") +     # lables to be displayed on chart using labs attribute
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +   #theme and font in which the titles, axis lables should be displayed.
  theme(axis.title = element_text(color="#666666", face="bold", size=15))  # color and font of the labels are set using attributes face, size, color


#9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named “Total Murders”.

bar_chart_murder_state_axis_vertical <- ggplot() + geom_col(data = merged_data, aes(x = factor(Row.names), y = merged_data$NumberofMurders)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle("Total Murders") +            # element_text attribute is used to orient lables angle by 90 degrees vertical to the x axis.
  labs(x="State",y="Murders") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))


#10) Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate

bar_chart_murder_state_sorted <- ggplot() + geom_col(data = merged_data, aes(x = reorder(factor(Row.names), -merged_data$NumberofMurders, sum), y = merged_data$NumberofMurders)) +   # reorder attribute is used to sort the graph or chart in ascending or descending. -merged_data$Murder, sum parameters are used where the - indicates the graph is order in descending starting from 0 in x axis by murder rate.
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle("Total Murders") +
  labs(x="State",y="Murders") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))


#11) Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar

bar_chart_murder_state_filled <- ggplot() + geom_col(data = merged_data, aes(x = reorder(factor(Row.names), -merged_data$NumberofMurders, sum), y = merged_data$NumberofMurders, fill=merged_data$PCNT_POPEST18PLUS)) +  # fill attribute is used to have the bar chart color filled by Percentage of population over 18. the color gradient varies by the magnitude of value of percentage.
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle("Total Murders") +
  labs(x="State",y="Murder rate") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))
  
