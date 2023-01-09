## Circular barplot with R and ggplot2


![image](https://user-images.githubusercontent.com/17006122/211274693-fac349a8-41b1-4d7a-a7c3-12fbdce89aba.png)


## Basic RADAR chart code

```
plt <- ggplot(plot_df) +
  # Make custom panel grid
  geom_hline(
    aes(yintercept = y), 
    data.frame(y = c(0:3) * 1000),
    color = "lightgrey"
  ) + 
  # Add bars to represent the cumulative track lengths
  # str_wrap(region, 5) wraps the text so each line has at most 5 characters
  # (but it doesn't break long words!)
  geom_col(
    aes(
      x = reorder(str_wrap(region, 5), sum_length),
      y = sum_length,
      fill = n
    ),
    position = "dodge2",
    show.legend = TRUE,
    alpha = .9
  ) +
  
  # Add dots to represent the mean gain
  geom_point(
    aes(
      x = reorder(str_wrap(region, 5),sum_length),
      y = mean_gain
    ),
    size = 3,
    color = "gray12"
  ) +
  
  # Lollipop shaft for mean gain per region
  geom_segment(
    aes(
      x = reorder(str_wrap(region, 5), sum_length),
      y = 0,
      xend = reorder(str_wrap(region, 5), sum_length),
      yend = 3000
    ),
    linetype = "dashed",
    color = "gray12"
  ) + 
  
  # Make it circular!
  coord_polar()

plt

```

[link to developer website](https://r-graph-gallery.com/web-circular-barplot-with-R-and-ggplot2.html)
