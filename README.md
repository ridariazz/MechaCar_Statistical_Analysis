# Overview 

Our goal in this project is to review the production data to gain insights that may help the manufacturing team. In order to create a proper statistical delivery, we measured the production data in three different ways:

- Linear Regression to Predict MPG
- Summary Statistics on Suspension Coils
- T-Test on Suspension Coils 

## Analysis 

### Deliverable 1: Linear Regression to Predict MPG 

This dataset contains mpg test results for 50 prototype MechaCars. Multiple metrics for each car were collected as in vehicle length, vehicle weight, spoiler angle, drivetrain and ground clearance. We designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar dataset. 

Step 1: Adding dplyr package 
(insert image)

Step 2: Import and read in the MechaCar_mpg.csv file as a dataframe.
(insert image)

Step 3: Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
(insert image)

Step 4: Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

### Deliverable 2: Summary Statistics on Suspension Coils

The next step to our analysis is analyzing the results from multiple production lots contained in the Suspension_Coil dataset. The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

Step 1: Download the Suspension_Coil.csv file
(insert image)

Step 2: In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
(insert image)

Step 3: Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
(insert image)

Step 4: creating a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
(insert image)

### Deliverable 3: T-Test on Suspension Coils

For this part of our analysis, we performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Step 1: Writing a t-test function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
(insert image)

Step 2: determining the PSI for each of the three manufacturing lots
(insert image)

## Study Design: MechaCar vs Competition

Metrics we will be testing is numerical data, data samples are large as well as be randomly selected and majority all of the metrics we observed in our data sets are independent variables except for current selling price which is a dependent variable. 

*Hypothesis: Comparing the average vehicle weight*
**Null Hypothesis:** There is not statistical difference between MechaCar's average vehicle weight and the mean of the competitor's vehicle weight.

**Alternative Hypothesis:** MechaCar's average vehicle weight is greater than the mean of the competitor's verhicle weight. 

*Statistical Test*

To test the hypothesis, we would use a t-test to compare our dataset with the competitor's dataset comparing the average vehicle weight as well as the prices the cars are going for. This test allows us to compare the means of two groups and this way we can determine whether this process has an effect on the population of interest. In the end, we can test our hypothesis and see if the two groups are different from each other. 

*Data Needed to Run Statistical Test*

In order to test our hypothesis using t-test analysis, we need three important data values: 

- Mean difference: difference between the mean values from each data set 
- Standard Deviation of each group
- Number of data values of each group 