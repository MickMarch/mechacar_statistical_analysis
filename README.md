# MechaCar Statistical Analysis

## Overview of Project

### Purpose

The purpose of this project is to use `R` to do some statistical analysis.

## Results

### Linear Regression to Predict MPG

![MPGLinearRegSummary](img/MPGLinearRegSummary.png)

The variables which provide a non-random amount of variance are:

- `vehicle_length`. With a p-value of **2.60e-12**, this independent variable has significant impact on the `mpg` variable.
- `ground_clearance`. With a p-value of **5.21e-08**, this independent variable has significant impact on the `mpg` variable.
- `vehicle_weight`. With a p-value of **0.0776**, this independent variable has a slight impact on the `mpg` variable.

The slope of the linear model is not likely to be considered zero. This can be seen by the low p-values of `vehicle_length`, `ground_clearance`, and `vehicle_weight` independent variables. Based on these significant coefficients and high r-squared value, it is likely that the slope is non-zero.

The multiple linear regression model seems to be a good predictor of the `mpg` variable of MechaCar prototypes. The model has a high R-squared value of 0.7149, indicating that 71.49% of the variation in `mpg` is explained by the independent variables in the model.<br><br>


### Summary Statistics on Suspension Coils

*The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.*
#### Overall Manufacturing Coils PSI Summary

![TotalSummary](img/TotalSummary.png)

When considering the manufacturing data as a whole, the variance of **62.29356** does not exceed the 100 pounds per square inch threshold and therefore meets the manufacturing requirements.

#### Individual Lot Manufacturing Coils PSI Summary

![LotSummary](img/LotSummary.png)

When considering the manufacturing data individually per lot:

- Lot1: the variance of **0.9795918** does not exceed the 100 pounds per square inch threshold and therefore **MEETS** the manufacturing requirements.

- Lot2: the variance of **7.4693878** does not exceed the 100 pounds per square inch threshold and therefore **MEETS** the manufacturing requirements.

- Lot3: the variance of **170.2861224** exceeds the 100 pounds per square inch threshold and therefore **FAILS** the manufacturing requirements.


### T-Tests on Suspension Coils

*The following One-Sample T-Tests are conducted to determine if the PSI is statistically different from the population mean of 1,500 pounds per square inch. I will also reference the p-value typical threshold of statistical significance as being 0.05.*

#### Overall Manufacturing One-Sample T-Test

![TotalSampleTTest](img/TotalSampleTTest.png)

The p-value of **0.06028** is higher than the typical threshold of 0.05 for statistical significance. Therefore, we can conclude that the sample mean is not statistically different from the population mean at the typical level of significance.

#### Lot 1 Manufacturing One-Sample T-Test

![Lot1SampleTTest](img/Lot1SampleTTest.png)

The p-value of **1** is the highest possible p-value. Therefore, we can conclude with high certainty that the sample mean is not statistically different from the population mean.

#### Lot 2 Manufacturing One-Sample T-Test

![Lot2SampleTTest](img/Lot2SampleTTest.png)

The p-value of **0.6072** is much higher than the typical threshold of 0.05 for statistical significance. Therefore, we can conclude that the sample mean is not statistically different from the population mean at the many different levels of significance.

#### Lot 3 Manufacturing One-Sample T-Test

![Lot3SampleTTest](img/Lot3SampleTTest.png)

The p-value of **0.04168** is lower than the typical threshold of 0.05 for statistical significance. Therefore, we can conclude that sample mean is statistically different from the population mean at the typical level of significance.
