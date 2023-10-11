# Read csv data from R 
data = 'data/iris.csv'
df <- read.csv(data)

# Use View Function to view data as table
View(df)

# Read Table
df <- read.table(data, sep=',')
View(df)

# Read Delim
df <- read.delim(data, sep = ',')
View(df)
