# INSTALL AND LOAD PACKAGES

require(pacman)
library(pacman) # load package manager library to read json file
pacman::p_load(pacman,tidyverse,jsonlite,rio,plotly,dplyr,tidyr) 
library(datasets)  # Load/unload base packages manually

# Deliverable 1: Linear Regression to Predict MPG 

mecha_mpg <- read.csv('Resources/MechaCar_mpg.csv') #import dataset
class(mecha_mpg)
head(mecha_mpg)

mecha_reg <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg) #generate multiple linear regression model
mecha_reg # variable holding multiple reg for mecha car
summary(mecha_reg) #generate summary statistics

## Deliverable 2: Create Visualizations for the Trip Analysis

mecha_SC <- read.csv('Resources/Suspension_Coil.csv') #import dataset

head(mecha_SC)
# get the mean, median, variance, and standard deviation of the suspension coil’s PSI column

Mean = mean(mecha_SC$PSI)
Median=median(mecha_SC$PSI)
Variance=var(mecha_SC$PSI)
SD = sd(mecha_SC$PSI)

total_summary <- data.frame(Mean,Median,Variance,SD)
total_summary

## Write an RScript that creates a lot_summary

lot_summary <-mecha_SC %>% group_by(Manufacturing_Lot) %>% summarise(
  Mean=mean(PSI),
  Median = median(PSI),
  Variance = var(PSI),
  SD = sd(PSI), 
  .groups = 'keep')
lot_summary

## Deliverable 3: T-Tests on Suspension Coils

t.test(mecha_SC$PSI,mu=1500) #compare sample versus population means

t.test(subset(mecha_SC,Manufacturing_Lot=='Lot1')$PSI ,mu=1500) #compare means of lot1 with samples

t.test(subset(mecha_SC,Manufacturing_Lot=='Lot2')$PSI ,mu=1500) #compare means of lot2 with samples

t.test(subset(mecha_SC,Manufacturing_Lot=='Lot3')$PSI ,mu=1500) #compare means of lot3 with samples




