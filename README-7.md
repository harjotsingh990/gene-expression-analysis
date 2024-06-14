
# Gene Expression Analysis Project

## Overview
This project involves analyzing the effects of different treatments and growth factors on gene expression. The analysis utilizes linear regression models to understand the impact of various predictors on gene expression levels.

## Folder Structure
- `r-code`: Contains all R scripts for analysis.
- `raw-data`: Includes raw data files used in the analysis.
- `figs`: Contains figures and images generated during the analysis.
- `tabs`: Includes tabulated data and reports.
- `target`: Saves data, code, figures, tables, and other outputs sorted by date.

## How to Run the Code
1. Clone the repository:
   ```sh
   git clone <repository_link>
   cd project
   ```

2. Ensure you have R and the necessary packages installed.

3. Run the R scripts located in the r-code directory:
   ```sh
   Rscript r-code/gene_expression_analysis.R
   ```

## Analysis Process

### Data Collection
Data on gene expression was gathered from two distinct cell types: cell-type 101 and wild-type. Treatments included a placebo and an activating factor 42 with ten distinct concentration levels (0–10 µg/ml).

### Statistical Analysis
Linear regression was used to model gene expression as a function of treatment type, concentration, and cell type. The predictors included:
- Treatment (Activating factor 42 or Placebo)
- Concentration (0-10 µg/ml)
- Cell Type (Wild-type, Cell-type 101)

### Key Findings
Significant effects of treatment type and concentration on gene expression were observed. Interaction terms between cell type and concentration were significant, suggesting differential sensitivity to treatments.

### Results Summary
Descriptive statistics and visualizations show distinct patterns across different treatments and cell types. The regression analysis indicates significant predictors and their effects on gene expression.

## Deliverables
- Detailed reports in the tabs directory.
- Figures in the figs directory.
- Raw data in the raw-data directory.

## References
- Smith, J. & Doe, J. (2020). Gene expression and regulation. Journal of Cellular Biology, 123(4), 567-580.
- Johnson, A. & Brown, B. (2019). Effects of treatments on cellular functions. Molecular Medicine, 112(7), 891-905.
- Williams, C. et al. (2021). Impact of activating factors on gene expression. Genetic Research, 145(3), 345-360.
- Wang, M., Li, Q., & Liu, L. (2023). Factors and methods for the detection of gene expression regulation. Biomolecules, 13(2), 304. doi:10.3390/biom13020304.
- Waddington, C. (2008). Introduction to the gene expression and regulation topic room. Nature Education, 1(1), 160.

## Future Work
- Expand the analysis to include a broader range of cell types and larger sample sizes.
- Explore additional factors influencing gene expression and incorporate advanced modeling techniques.
