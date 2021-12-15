# INSTALL AND LOAD PACKAGES

require(pacman)
library(pacman) # load package manager library to read json file
pacman::p_load(pacman,tidyverse,jsonlite,rio,plotly,dplyr,tidyr) 
library(datasets)  # Load/unload base packages manually

# Deliverable 1: Linear Regression to Predict MPG 

mecha_mpg <- read.csv('MechaCar_mpg.csv') #import dataset
class(mecha_mpg)
head(mecha_mpg)

mecha_reg <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg) #generate multiple linear regression model
mecha_reg # variable holding multiple reg for mecha car
summary(mecha_reg) #generate summary statistics
