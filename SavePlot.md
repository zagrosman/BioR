# Save high-resolution R plots

To save high quality plots, you can use the `ggsave()` function from the `ggplot2 package` to save your plot in high resolution. Here is an example code:


```
library(ggplot2)

# Create a plot
my_plot <- ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point()

# Save the plot in high resolution
ggsave("my_plot.png", plot = my_plot, dpi = 300)
```

Check your R home directory to see the saved high quality plot. 

![Hplot](https://user-images.githubusercontent.com/17006122/222015787-9802b259-30e2-42e9-9dc9-7674454edd49.png)
