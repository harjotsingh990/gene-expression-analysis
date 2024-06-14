
# Loadig the targets package
library(targets)

# Definig the target script
tar_script({
  # we are loadig necessary libraries
  library(ggplot2)
  
  # we are definig the targets
  list(
    tar_target(
      raw_data,
      read.csv("raw-data/gene_expression_data.csv")
    ),
    tar_target(
      gene_expression_by_concentration,
      {
        p <- ggplot(raw_data, aes(x = conc, y = gene_expression, color = treatment)) +
          geom_point() +
          geom_line() +
          ggtitle("Gene Expression by Concentration") +
          xlab("Concentration (µg/ml)") +
          ylab("Gene Expression") +
          theme_minimal()
        ggsave("figs/gene_expression_by_concentration.png", plot = p)
        p
      }
    ),
    tar_target(
      gene_expression_by_treatment,
      {
        p <- ggplot(raw_data, aes(x = treatment, y = gene_expression)) +
          geom_boxplot() +
          ggtitle("Gene Expression by Treatment") +
          xlab("Treatment") +
          ylab("Gene Expression") +
          theme_minimal()
        ggsave("figs/gene_expression_by_treatment.png", plot = p)
        p
      }
    )
  )
})

# we are settig up the options for the target package
tar_option_set(
  packages = c("ggplot2")
)

# we are defining the output directories
tar_make_clustermq()

