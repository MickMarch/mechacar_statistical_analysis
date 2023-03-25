library(dplyr)

#Read in MechaCar mpg CSV
mecha_mpg <- read_csv(file="resources/MechaCar_mpg.csv")

#Create Multiple Linear Regression Model
lin_reg <-  lm(
  mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
  data=mecha_mpg
    )

#Create a summary of the Multiple Linear Regression Model
lin_reg_summary <- summary(lin_reg)

#Display both in the console
lin_reg
lin_reg_summary

#Read in suspension coil CSV file
suspension_table <- read_csv(file="resources/Suspension_Coil.csv")

#Create a summary of the suspension table showing the Mean, Median, Variance, and Standard Deviation
total_summary <- suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Create a summary of the suspension table showing the Mean, Median, Variance, and Standard Deviation
#Grouped by Lot
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Run a t.test() to determine if the PSI across all manufacturing lots is 
#statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI, mu=1500)

#Run a t.test() for each individual lot to determine if the PSI of each lot is
#statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspension_table$PSI, suspension_table$Manufacturing_Lot == "Lot1"),mu=1500)

t.test(subset(suspension_table$PSI, suspension_table$Manufacturing_Lot == "Lot2"),mu=1500)

t.test(subset(suspension_table$PSI, suspension_table$Manufacturing_Lot == "Lot3"),mu=1500)
