# Create Histogram using ggplot2

# Import Library
library(ggplot2)

# Preview Iris Data
# Optional Step - To Understand DataSet
View(iris)

# Plot Histogram using ggplot2
ggplot(data=iris) + geom_histogram(aes(x= Sepal.Length))

# Here Sepal Length used as Plot Data
