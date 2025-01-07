library(tidyverse)
library(ggplot2)

data <- data.frame(Months = 1:12,
                   Price = c(1:12),
                   Group = rep(LETTERS[1:7], each = 12))

ggplot(data=GIANTTECH11, mapping=aes(x=Months, y=Price, color = Group)) +          # Draw default ggplot2 plot
  geom_line() +
  geom_point(size=3, alpha =0.3) +
  
  
  labs(title = "Tech giants performance", x="Months", y="Price", color="Group")+
  
  scale_color_manual(values = custom_colors) + 
  
  # Adjusting group colors
  
  theme_minimal()+ scale_y_continuous(limits = c(0,900),breaks = scales:: breaks_width(50))

