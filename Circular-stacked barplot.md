# Circular Stacked bar plot code


<p align="justify"> This code will generate a circular stacked bar plot with three main groups (A, B, C) and four subgroups (X, Y, Z, W) for each group. The subgroups are colored using a predefined set of colors, and their order is defined using the subgrp_order variable. The resulting plot will have a white background, with a legend at the bottom and a title at the top. </p>

# Code

# Load necessary packages
```
library(ggplot2)
```

# Create example data
```
df <- data.frame(
  group = rep(c("A", "B", "C"), each = 4),
  subgrp = rep(c("X", "Y", "Z", "W"), times = 3),
  value = c(2, 5, 3, 1, 3, 4, 2, 6, 4, 3, 1, 5)
)
```

# Define colors for each subgroup
```
subgrp_colors <- c("#FF6666", "#FFFF66", "#66FF66", "#66FFFF")
```
# Define the order of the subgroups
```
subgrp_order <- c("W", "Z", "Y", "X")
```

# Create the plot

```
ggplot(df, aes(x = factor(1), y = value, fill = subgrp, order = subgrp)) +
  geom_bar(stat = "identity", color = "black", width = 1) +
  scale_fill_manual(values = subgrp_colors, guide = "none") +
  coord_polar(theta = "y") +
  theme_void() +
  theme(legend.position = "bottom") +
  guides(fill = guide_legend(ncol = 4, byrow = TRUE)) +
  scale_y_continuous(limits = c(0, max(df$value))) +
  scale_x_discrete(limits = c(0, 2), labels = NULL) +
  labs(title = "Circular Stacked Bar Plot", x = NULL, y = NULL)
  ```
