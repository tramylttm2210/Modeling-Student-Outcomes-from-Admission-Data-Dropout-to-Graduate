

# Load packages
library(tidyverse)
library(psych)
library(knitr)

# Load dataset
data <- read.csv("data.csv", sep = ";")

# Check structure
str(data)


# -------- 1. Descriptive Statistics for the Entire Sample --------
desc_all <- describe(data %>% select_if(is.numeric))
desc_all_subset <- desc_all[, c("n", "mean", "sd", "min", "max")]

# Display the table
kable(desc_all_subset, caption = "Descriptive Statistics for the Entire Sample")

# -------- 2. Descriptive Statistics by Group (Target variable) --------
## a. Dropout group

dropout_data <- data %>% filter(Target == "Dropout")
desc_dropout <- describe(dropout_data %>% select_if(is.numeric))
desc_dropout_subset <- desc_dropout[, c("n", "mean", "sd", "min", "max")]
kable(desc_dropout_subset, caption = "Descriptive Statistics for the Dropout Group")

## b. Enrolled group

enrolled_data <- data %>% filter(Target == "Enrolled")
desc_enrolled <- describe(enrolled_data %>% select_if(is.numeric))
desc_enrolled_subset <- desc_enrolled[, c("n", "mean", "sd", "min", "max")]
kable(desc_enrolled_subset, caption = "Descriptive Statistics for the Enrolled Group")

## c. Graduate group

graduate_data <- data %>% filter(Target == "Graduate")
desc_graduate <- describe(graduate_data %>% select_if(is.numeric))
desc_graduate_subset <- desc_graduate[, c("n", "mean", "sd", "min", "max")]
kable(desc_graduate_subset, caption = "Descriptive Statistics for the Graduate Group")


# 1.Scatter Plot: Admission Grade vs. 1st Semester Grade

# Export scatter plot as an image
png("scatterplot_admission_vs_sem1.png", width = 700, height = 500)

# Adjust margins
par(mar = c(5, 5, 4, 2))

# Create the scatter plot
plot(data$Admission.grade, data$Curricular.units.1st.sem..grade.,
     main = "Scatter Plot: Admission vs. 1st Semester Grade",
     xlab = "Admission Grade",
     ylab = "1st Semester Grade",
     pch = 19, col = rgb(0.2, 0.4, 0.6, 0.5))

# Add linear regression line
abline(lm(data$Curricular.units.1st.sem..grade. ~ data$Admission.grade),
       col = "red", lwd = 2)

dev.off()

# 2. Jitter Plot: Scholarship Holder vs. Target Group

# Export scatter plot as an image
png("jitterplot_scholarship_vs_target.png", width = 700, height = 500)

# Adjust margins
par(mar = c(5, 5, 4, 2))

# Create the Jitter Plot
plot(jitter(as.numeric(data$`Scholarship.holder`)),
     jitter(as.numeric(as.factor(data$Target))),
     main = "Jitter Plot: Scholarship vs. Target Group",
     xlab = "Scholarship Holder (0 = No, 1 = Yes)",
     ylab = "Target Group (1 = Dropout, 2 = Enrolled, 3 = Graduate)",
     col = "forestgreen", pch = 20)

dev.off()

# 3. Boxplot: 1st Semester Grade by Target Group

# Export scatter plot as an image
png("boxplot_sem1grade_by_target.png", width = 700, height = 500)

# Adjust margins
par(mar = c(5, 5, 4, 2))


# Create the Boxplot:
boxplot(`Curricular.units.1st.sem..grade.` ~ Target, data = data,
        col = c("tomato", "gold", "skyblue"),
        main = "Boxplot: 1st Semester Grade by Target Group",
        xlab = "Target Group",
        ylab = "1st Semester Grade")

abline(h = mean(data$`Curricular.units.1st.sem..grade.`, na.rm = TRUE),
       col = "blue", lty = 2)

dev.off()

