# Line Chart 

plots_path = "02_Visualization/01_Basic Charts/01_Line Chart//"

# Load the Air Passengers Data Set
data(AirPassengers)

# Let's put common data for reuse
title = "International Airline Passengers (1949-1960)"
x_label = "Year"
y_label = "Total Passengers (in K)"

# These two lines to save the plot as image file
file1 = paste(plots_path,"line_plot.png")
png(file1)
# Create the line plot
plot(AirPassengers, type = "l", main = title, xlab = x_label, ylab = y_label)

# Create the line plot with points 
file2 = paste(plots_path,"line_plot_with_points.png")
png(file2)
plot(AirPassengers, type = "b", main = title, xlab = x_label, ylab = y_label)

# Create the line plot with points over plotted
file3 = paste(plots_path,"line_plot_with_points_overplotted.png")
png(file3)
plot(AirPassengers, type = "o", main = title, xlab = x_label, ylab = y_label)

# Create the line plot without points
file4 = paste(plots_path,"line_plot_without_points.png")
png(file4)
plot(AirPassengers, type = "c", main = title, xlab = x_label, ylab = y_label)

# Create the line plot like Histogram
file5 = paste(plots_path,"line_plot_like_histogram.png")
png(file5)
plot(AirPassengers, type = "h", main = title, xlab = x_label, ylab = y_label)

# Create the line plot like stair steps
file6 = paste(plots_path,"line_plot_like_stair_steps.png")
png(file6)
plot(AirPassengers, type = "s", main = title, xlab = x_label, ylab = y_label)

# Close the current graphic device
dev.off()






