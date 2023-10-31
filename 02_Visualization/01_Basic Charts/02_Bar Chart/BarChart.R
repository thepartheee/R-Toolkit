#NOTE: INCOMPLETE CODE - UNDER PROGRESS

# Bar Plot 
plots_path = "02_Visualization/01_Basic Charts/02_Bar Chart//"


# Load the Air Passengers Data Set
df <- as.data.frame(HairEyeColor)
head(df)

# Let's group 
library(dplyr)

aggregate(Freq ~ Eye, df, count(df$Eye))

grouped <- df %>% group_by(df$Hair) %>% summarize(count(df$Hair))
grouped

# Create the bar plot
barplot(df$Freq,
        names.arg = df$Hair)

help(barplot)
