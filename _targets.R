# Loading the targets package
library(targets)

# Defining the target script
tar_script({
  # We are loading necessary libraries
  library(ggplot2)
  
  # We are defining the targets
  list(
    # Target to read the raw data from CSV file
    tar_target(
      raw_data,
      read.csv("project/raw-data/gene_expression_data.csv")
    ),
    # Target to create a plot of gene expression by concentration
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
        # Save the plot to figs directory
        ggsave("project/figs/gene_expression_by_concentration.png", plot = p)
        p
      }
    ),
    # Target to create a boxplot of gene expression by treatment
    tar_target(
      gene_expression_by_treatment,
      {
        p <- ggplot(raw_data, aes(x = treatment, y = gene_expression)) +
          geom_boxplot() +
          ggtitle("Gene Expression by Treatment") +
          xlab("Treatment") +
          ylab("Gene Expression") +
          theme_minimal()
        # Save the plot to figs directory
        ggsave("project/figs/gene_expression_by_treatment.png", plot = p)
        p
      }
    )
  )
})

# We are setting up the options for the target package
tar_option_set(
  packages = c("ggplot2")
)

# We are defining the output directories
tar_make_clustermq()


