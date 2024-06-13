
# Load necessary libraries
library(ggplot2)
library(dplyr)
library(readr)

# Load data
data <- read_csv("raw-data/gene_expression_data.csv")

# Perform analysis
model <- lm(gene_expression ~ treatment + concentration + cell_type, data = data)

# Summary of the model
summary(model)

# Save plots
plot <- ggplot(data, aes(x = concentration, y = gene_expression, color = treatment)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal()

ggsave("figs/gene_expression_plot.png", plot = plot)

# Save results
write.csv(summary(model), "tabs/regression_summary.csv")
