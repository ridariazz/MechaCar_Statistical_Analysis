# Deliverable 1 

# load dplyr using library() fxn
library(dplyr)

# Import and read MechaCar_mpg as data frame 
mechacar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm fxn 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table)

# Use the summary() fxn, determine the p-value and the r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_table))

# On ReadMe, have a subheading (## Linear Regression to Predict MPG) and write a short summary using screenshot
# output from the linear regression

# Deliverable 2: Technical Analysis 
# download the Suspension_Coil file
# In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# creates a total_summary data frame using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_table %>% summarize(Mean_PSI=mean(PSI),
                                                +                                           Median_PSI=median(PSI),
                                                +                                           Var_PSI=var(PSI),
                                                +                                           Std_Dev_PSI=sd(PSI),
                                                +                                           Num_Coil=n(), .groups = 'keep')
View(total_summary)

# lot summary data frame using to group each manufacturing lot by mean, median and standard deviation 
lot_summary <- suspension_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI), Num_Coil=n(), .groups = 'keep')  
View(lot_summary)

# On ReadMe, have a subheading (## Summary Statistics on Suspension Coils) and provide screenshots of lot_summary and total_summary

## Deliverable 3
# Technical Analysis 
# t.test() function to determine the PSI across all manufacturing lots is statistically different 
# from the population mean of 1,500 pounds per square inch 
t.test(suspension_table$PSI,mu=1500)

# write three more scripts 
# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
 lot1 <- subset(suspension_table, Manufacturing_Lot=="Lot1")
 lot2 <- subset(suspension_table, Manufacturing_Lot=="Lot2")
 lot3 <- subset(suspension_table, Manufacturing_Lot=="Lot3")
 t.test(lot1$PSI,mu=1500)
 t.test(lot2$PSI,mu=1500)
 t.test(lot3$PSI,mu=1500)


# In your README, create a subheading ## T-Tests on Suspension Coils, then briefly summarize your 
# interpretation and findings for the t-test results. 
# Include screenshots of the t-test to support your summary.




