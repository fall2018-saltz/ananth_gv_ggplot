
merged_data <- merge(us_arrest, us_census, by.x = "row.names", by.y = c("NAME"), all = TRUE)

merged_data


library(ggplot2)
qplot(merged_data$POPESTIMATE2017, geom="histogram")
