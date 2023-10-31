# Load the required library and data
library(ggplot2)
data("AirPassengers")

View(AirPassengers)

# Create a time index and convert the dataset to a data frame
time_index <- seq(from=as.Date("1949-01-01"), by="month", length.out=length(AirPassengers))
df <- data.frame("Month" = time_index, "Passengers" = as.vector(AirPassengers))

# Plot the data using ggplot
ggplot(df, aes(x=Month, y=Passengers)) + geom_line() +
  ggtitle("Time-Series of AirPassengers") +
  xlab("Month") +
  ylab("Number of Passengers") +
  theme_minimal()

