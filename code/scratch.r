# Your Code Here

# standardize the data
x_data.centered <- x_data - mean(x_data)
x_data.stand <- x_data.centered / sd(x_data)

y_data <- b0 + (b1 * x_data) + normal_distribution3
df <- data.frame(x_data = x_data.stand, y_data = y_data)
xy_plot3 <- ggplot(df, aes(x = x_data, y = y_data)) +
    geom_point() +
    labs(title = "Linear Graph Standardized Data") +
    geom_smooth(method = "lm", formula = y ~ x) +
    annotate("text", x = -1, y = 250, label = (paste0("slope==", coef(lm(df$y_data ~ df$x_data))[2])), parse = TRUE)
xy_plot3