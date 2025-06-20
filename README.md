# Modeling Student Outcomes from Admission Data: Dropout to Graduate

## Purpose  
To analyze a dataset of 4,424 undergraduate students and uncover early academic and financial indicators that predict three student outcomes: Dropout, Enrolled, or Graduate. The goal is to inform early intervention strategies that improve retention and success in higher education.

## Tools & Packages  
**Data Cleaning & Recoding:** `dplyr`, `tidyr`, `forcats`  
**Visualization:** `ggplot2`, `jitter`, `boxplot`  
**Statistical Tests:** ANOVA, Shapiro-Wilk test for normality  

## Project Overview  
Cleaned and recoded a dataset of 4,424 records:  
- Handled missing values  
- Factored categorical variables  
- Balanced representation of Dropout, Enrolled, and Graduate categories to ensure fair comparisons  

Generated descriptive-statistics tables to compare academic, demographic, and financial profiles across all outcome groups.

## Exploratory Data Analysis  

### Descriptive Statistics  
- **Overall sample**: Average admission grade = ~127, mean age = ~23.3  
- **Dropout group**: Lower admission grades (~125), older age (~26), low course pass rates, and financial delays  
- **Enrolled group**: Intermediate admission grades (~125.5), moderate course approval, better tuition status  
- **Graduate group**: Highest admission grades (~129), strong approval rates, high financial readiness and scholarship support  

### Visualizations  

#### Scatter Plot: Admission Grade vs. First-Semester Grade  
- Shows weak but positive correlation  
- Indicates admission score alone is not a strong predictor of early academic success  

#### Jitter Plot: Scholarship Status vs. Outcome  
- Visual clustering of scholarship holders in the Graduate group  
- Dropouts often lacked scholarships  
- Suggests financial support is correlated with persistence and success  

#### Boxplot: First-Semester Grades by Outcome  
- Clear separation between groups  
  - Graduates: Highest and most consistent grades  
  - Dropouts: Lowest median with wide variability  
  - Enrolled: Midpoint group with room for support  
- Outliers flagged potential early risks (e.g., zero grades in Enrolled group)

## Statistical Tests  
- **ANOVA** confirmed significant group differences in first-semester grades  
- **Shapiro-Wilk test** confirmed normality assumptions for ANOVA in key variables  

## Forecasting & Actionable Insight  
- **Critical thresholds**: Admission grades below ~125 or 0 passed courses in first semester signal high dropout risk  
- **Scholarship impact**: Financial support correlates with graduation likelihood  
- **Demographic markers**: Older students face more dropout risk—likely due to external obligations  

## Recommendations  
- Use enrollment-time data to flag at-risk students early  
- Implement targeted interventions:  
  - Academic tutoring for students with low admission grades  
  - Financial counseling and scholarship opportunities  
  - Personalized support for non-traditional students  
- Monitor 1st-semester performance for rapid response to academic failure

## Data Source  
Dataset: [UCI Machine Learning Repository – Predict Students Dropout and Academic Success](https://archive.ics.uci.edu/dataset/697/predict+students+dropout+and+academic+success)
