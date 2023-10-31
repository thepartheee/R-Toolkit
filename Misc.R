# Data
df <- as.data.frame(HairEyeColor)
head(df)

# 12. Return top 3 / least 3 values
head(sort(df$Freq, decreasing=TRUE), 3)
head(sort(df$Freq, decreasing = FALSE), 3)