
library(dplyr)


##################################################################

# Deliverable 1:Linear Regression to Predict MPG

myData <- read.csv("../Resources/MechaCar_mpg.csv")

# Column names
names(myData)

# data head
head(myData)

# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = myData)

# generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = myData)) #generate summary statistics

##################################################################

# Deliverable 2: Create Visualizations for the Trip Analysis

myData <- read.csv("../Resources/Suspension_Coil.csv")

# Column names
names(myData)

# data head
head(myData)



# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column:

total_summary <- myData %>% 
  summarize(Mean_PSI=mean(PSI),Median_PSI = median(PSI),Variance_PSI= var(PSI),SD_PSI=sd(PSI), .groups = 'keep')



# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() 
# functions to group each manufacturing lot by the mean, median, variance, 
# and standard deviation of the suspension coil’s PSI column.

lot_summary <- myData %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize(Mean_PSI=mean(PSI),Median_PSI = median(PSI),Variance_PSI= var(PSI),SD_PSI=sd(PSI), .groups = 'keep')


#################################################################

# Deliverable 3

myData <- read.csv("../Resources/Suspension_Coil.csv")

# 1
# Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots
# is statistically different from the population mean of 1,500 pounds per square inch.

t.test(myData$PSI,mu=1500) #compare sample versus population means

# 2
# Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its
# subset() argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.


PSI_Lot1 <- myData %>% filter(Manufacturing_Lot=="Lot1") 
PSI_Lot2 <- myData %>% filter(Manufacturing_Lot=="Lot2")
PSI_Lot3 <- myData %>% filter(Manufacturing_Lot=="Lot3")

t.test(PSI_Lot1$PSI,mu=1500) #compare sample versus population means
t.test(PSI_Lot2$PSI,mu=1500) #compare sample versus population means
t.test(PSI_Lot3$PSI,mu=1500) #compare sample versus population means


# Now that we have our paired datasets, we can use a paired t-test to determine if there is a statistical difference in overall highway fuel efficiency between vehicles manufactured in 1999 versus 2008. In other words, we are testing our null hypothesis—that the overall difference is zero.

#compare the mean difference between two samples:
t.test(mpg_1999$hwy,mpg_2008$hwy,paired = T) 