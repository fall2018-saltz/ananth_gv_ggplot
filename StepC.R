
#Step C: Which State had the Most Murders – bar charts

#7)	Calculate the number of murders per state

library(ggplot2)  
calculated_murders_perstate <- merged_data[,0:2]

#8)	Generate a bar chart, with the number of murders per state

bar_chart_murder_state <- ggplot() + geom_col(data = merged_data, aes(x = factor(Row.names), y = merged_data$Murder)) + 
  ggtitle("Total Murders") +
  labs(x="State",y="Murder rate") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))


#9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named “Total Murders”.

bar_chart_murder_state_axis_vertical <- ggplot() + geom_col(data = merged_data, aes(x = factor(Row.names), y = merged_data$Murder)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle("Total Murders") +
  labs(x="State",y="Murder rate") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))


#10) Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate

bar_chart_murder_state_sorted <- ggplot() + geom_col(data = merged_data, aes(x = reorder(factor(Row.names), -merged_data$Murder, sum), y = merged_data$Murder)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle("Total Murders") +
  labs(x="State",y="Murder rate") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))


#11) Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar

bar_chart_murder_state_filled <- ggplot() + geom_col(data = merged_data, aes(x = reorder(factor(Row.names), -merged_data$Murder, sum), y = merged_data$Murder, fill=merged_data$PCNT_POPEST18PLUS)) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + ggtitle("Total Murders") +
  labs(x="State",y="Murder rate") + 
  theme(plot.title = element_text(color="#666666", face="bold", size=15, hjust=0)) +
  theme(axis.title = element_text(color="#666666", face="bold", size=15))


