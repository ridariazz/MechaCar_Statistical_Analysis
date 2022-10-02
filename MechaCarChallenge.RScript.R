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







