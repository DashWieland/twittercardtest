library(ggplot2)
library(plotly)

static_plot <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point()

interactive_plot <- plotly::ggplotly(static_plot)


interactive_plot$sizingPolicy$padding <- "0"

htmlwidgets::saveWidget(
  interactive_plot, "index.html", libdir = "lib",
  title = "Iris Flowers Interactive",
  selfcontained = FALSE
)