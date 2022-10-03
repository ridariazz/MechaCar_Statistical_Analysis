# Overview 

Our goal in this project is to review the production data to gain insights that may help the manufacturing team. In order to create a proper statistical delivery, we measured the production data in three different ways:

- Linear Regression to Predict MPG
- Summary Statistics on Suspension Coils
- T-Test on Suspension Coils 

## Analysis 

### Deliverable 1: Linear Regression to Predict MPG 

This dataset contains mpg test results for 50 prototype MechaCars. Multiple metrics for each car were collected as in vehicle length, vehicle weight, spoiler angle, drivetrain and ground clearance. We designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar dataset. 

Step 1: Adding dplyr package 

<img width="598" alt="adding dplyr" src="https://user-images.githubusercontent.com/106577074/193495758-91ebaa13-c006-49aa-a662-80447faae285.png">


Step 2: Import and read in the MechaCar_mpg.csv file as a dataframe.

Step 3: Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

<img width="602" alt="mecha df and linear regression" src="https://user-images.githubusercontent.com/106577074/193495773-66260d50-9b15-4511-b927-f963b1e380b3.png">

*MechaCar Data Table:* 

<img width="595" alt="mechacar data" src="https://user-images.githubusercontent.com/106577074/193495812-583871a9-40b4-4371-bec9-3293ef94f027.png">

<img width="498" alt="mechacar_table" src="https://user-images.githubusercontent.com/106577074/193495835-d53017e5-5c76-4fd0-94c4-99aecad2c3bf.png">

Step 4: Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

<img width="598" alt="p-value and r squared value" src="https://user-images.githubusercontent.com/106577074/193495877-e8fe9433-9ed3-491c-a4b9-e000a303dbfe.png">

### Deliverable 2: Summary Statistics on Suspension Coils

The next step to our analysis is analyzing the results from multiple production lots contained in the Suspension_Coil dataset. The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

Step 1: Download the Suspension_Coil.csv file

Step 2: In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.

<img width="592" alt="import suspension data" src="https://user-images.githubusercontent.com/106577074/193495918-8d7a2016-a45b-4ac6-9f66-a0278ab6a644.png">


<img width="380" alt="suspension data" src="https://user-images.githubusercontent.com/106577074/193495930-73824dc0-9fc1-4d04-b717-0ac7db6236f0.png">

<img width="498" alt="suspension df" src="https://user-images.githubusercontent.com/106577074/193495995-372383b8-ff60-4cbb-b560-e374e39c8210.png">

Step 3: Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

<img width="590" alt="total summary code" src="https://user-images.githubusercontent.com/106577074/193496027-f7b3e491-6ddb-4f0c-9c5a-0f307d800bd7.png">

<img width="593" alt="total summary" src="https://user-images.githubusercontent.com/106577074/193496056-c6bc681b-73ca-4091-b0d3-e01b78f6c6b2.png">

Step 4: creating a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

<img width="599" alt="lot summary" src="https://user-images.githubusercontent.com/106577074/193496076-6ae3bc72-22fd-4100-bcb2-9c863176b21b.png">

<img width="589" alt="lot summary df" src="https://user-images.githubusercontent.com/106577074/193496113-11cba727-f25f-4290-8c5f-8d0aa9d84ee2.png">

### Deliverable 3: T-Test on Suspension Coils

For this part of our analysis, we performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Step 1: Writing a t-test function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

<img width="589" alt="t-test suspension data" src="https://user-images.githubusercontent.com/106577074/193496153-bbe65af8-0818-4d6b-8124-59af37ea7e38.png">

Step 2: determining the PSI for each of the three manufacturing lots

<img width="515" alt="PSI FOR EACH LOT" src="https://user-images.githubusercontent.com/106577074/193496172-8baa5c0c-6d5f-424f-add7-691c462d3837.png">

*Lot 1*

<img width="481" alt="LOT 1" src="https://user-images.githubusercontent.com/106577074/193496207-258713ca-f1a0-4085-a1fa-c2a117d55b12.png">

*Lot 2:*

<img width="450" alt="lot 2" src="https://user-images.githubusercontent.com/106577074/193496218-77616576-227f-4706-a1ea-0d1d4987cd73.png">

*Lot 3:*

<img width="544" alt="lot 3" src="https://user-images.githubusercontent.com/106577074/193496233-db9983f1-7108-43d5-8e67-90a7bf7625dc.png">

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
