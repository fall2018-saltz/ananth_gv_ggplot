
merged_data <- merge(us_arrest, us_census, by.x = "row.names", by.y = c("NAME"), all = TRUE)

merged_data
