# MechaCar_Statistical_Analysis

## Objective

- AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress.
- AutosRUs’ upper management had asked the data analytics team to review the production data for insights that may help the manufacturing team, performing the following analysis:
  - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
  - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
  - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results

### 1 Linear Regression to Predict MPG

![image1](./Resources/images/linear_regression_MPG.png)

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - As observed in Pr(<|t|) vehicle_length, vehicle_weight and the Intercept are statistically unlikely to provide random amounts of variance to the linear model.

- Is the slope of the linear model considered to be zero? Why or why not?
  - No, as the p-value of the model (5.35e-11) is significantly lower to a confidence value of 0.5%, the Null hypothessis (H0) can be rejected.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - The model seems to be fairly effective, as the R-squared is 0.7149.

## Sumary

### 1 Linear Regression to Predict MPG

### 2 Summary Statistics on Suspension Coils

### 3 T-Test on Suspension Coils

### 4 Design a Study Comparing the MechaCar to the Competition

