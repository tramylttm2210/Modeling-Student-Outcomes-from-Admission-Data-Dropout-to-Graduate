# Modeling-Student-Outcomes-from-Admission-Data-Dropout-to-Graduate

## Purpose
Analyze a 4,424-record enrollment dataset to predict student outcomes (Dropout, Enrolled, Graduate) and identify early risk factors for targeted interventions.

---
## Tools & Packages
- **R** with:
  - `tidyverse` (`dplyr`, `readr`)
  - `janitor`
  - `ggplot2`
---

## Techniques & Workflow
- **Data Cleaning & Wrangling**: Factored categorical variables (Dropout/Enrolled/Graduate), imputed missing values, ensured balanced class distribution, and standardized labels using `tidyverse` (`dplyr`, `readr`) and `janitor`.
- **Descriptive Profiling**: Created summary tables for admission grades, first-semester approval rates, age demographics, and financial indicators to pinpoint group-level differences.
- **Data Visualization**: Employed `ggplot2` to generate:
  - **Scatter Plots** (Admission Grade vs. First-Semester Grade)
  - **Jitter Charts** (Scholarship Status vs. Outcome Category)
  - **Boxplots** (Grade Distributions across Dropout/Enrolled/Graduate)
- **Statistical Validation**:
  - **ANOVA**: Tested for significant mean differences in admission and semester grades between outcome groups.
  - **Normality Tests**: Verified distribution assumptions (e.g., Shapiro–Wilk) before parametric tests.

---

## Key Insights
- **Admission Thresholds**: Identified cutoffs in admission grades that correlate with dropout risk.
- **Scholarship Effect**: Recipients show higher graduation probabilities, underscoring the value of financial aid.
- **Demographic Markers**: Age and financial status flag at-risk cohorts for early support.
- **Proactive Signals**: Early academic and financial metrics reliably forecast outcomes, enabling targeted interventions.

---

