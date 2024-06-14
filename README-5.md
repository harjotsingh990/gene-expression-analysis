
# Gene Expression Analysis Project

## Overview
This project aims to analyze the effects of growth factors and treatments on gene expression using linear regression models. The analysis includes data from two cell types under various treatment conditions.

## Folder Structure
- `r-code`: Contains all R scripts used for the analysis.
- `raw-data`: Contains raw data files.
- `figs`: Contains all figures generated during the analysis.
- `tabs`: Contains all tables generated during the analysis.

## Getting Started
### Prerequisites
- R (version 4.0.0 or later)
- Required R packages: ggplot2, dplyr, readr, targets

### Running the Code
1. Clone the repository:
   ```bash
   git clone https://github.com/<your-username>/gene-expression-analysis.git
   ```
2. Navigate to the project directory:
   ```bash
   cd gene-expression-analysis
   ```
3. Run the main analysis script:
   ```R
   source("r-code/main_analysis.R")
   ```

## Analysis Details
The analysis examines the impact of treatment type, concentration, and cell type on gene expression levels. The key predictors in the linear regression models are:
- Treatment (Activating factor 42 or Placebo)
- Concentration (0-10 µg/ml)
- Cell Type (Wild-type, Cell-type 101)

## Results
The analysis results are summarized in the following tables and figures:
- Summary statistics for gene expression levels (Table 1)
- Regression analysis results (Table 2)
- Gene expression plots (Figures in the `figs` folder)

## Contributors
- Dr. Karl Berator, Institute of -omics Adelaide

## License
This project is licensed under the MIT License - see the LICENSE file for details.
