# MechaCar_Statistical_Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG

![Linear Regression](https://github.com/div1085/MechaCar_Statistical_Analysis/blob/7d94f2a247ee7e6c8022042460f821542027d29b/Images/multiple%20lin%20reg.png)


In the Mecha car dataset 'vehicle_length' and 'ground_clearance' provides non randon variance to the model. Both variables shows high correlation with Mile Per     Gallon (MPG) independent variable. P value of both variables are marked in orange. On other hand, vehicle_weight, spoiler_angle, and AWD reflect random amount of variance in dataset
 
 The (p-value: 5.35e-11) for our regression is lower than significance level of 0.05%. This indicate there is sufficient evidence to reject null hypothesis, which means slope of our model is not zero. (P value marked in blue.)
  
With the Multiple R-squared: 0.7149, there is sufficient evidence to indicate that model can predict MPG with 71.9% probability of success.

## Summary Statistics on Suspension Coils

![Total Summary](https://github.com/div1085/MechaCar_Statistical_Analysis/blob/229a45643880f7f94d9ef50e675c9b9167db66ed/Images/total_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Reviewing lot summary to get individual summary in figure below:

![Lot Summary](https://github.com/div1085/MechaCar_Statistical_Analysis/blob/229a45643880f7f94d9ef50e675c9b9167db66ed/Images/lot_summary.png)

The overall variance of 62.29 is well below the threshold of 100 PSI for the lots, there seems to be anamoly in lot no. 3, as shown in figure above (lot summary). The variance of lot is 170.28 which is significantly higher than threshold.

## T-Tests on Suspension Coils

![ttest lot](https://github.com/div1085/MechaCar_Statistical_Analysis/blob/ca4c2ff63a60dde14d8936904e341a2cec1268c7/Images/ttest%20lot.png)

By running t test on entire coils data, the true mean of the sample comes out as 1498.78. With a p-Value of 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. 


![ttest lot1](https://github.com/div1085/MechaCar_Statistical_Analysis/blob/ca4c2ff63a60dde14d8936904e341a2cec1268c7/Images/ttest%20lot1.png)

Lot 1 sample has the true sample mean of 1500. With a p-Value of 1, we cannot reject the null hypothesis as there is no statistical difference between the observed sample mean and the presumed population mean (1500).

![ttest lot2](https://github.com/div1085/MechaCar_Statistical_Analysis/blob/ca4c2ff63a60dde14d8936904e341a2cec1268c7/Images/ttest%20lot2.png)
Lot 2 has a p-Value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.

![ttest lot3](https://github.com/div1085/MechaCar_Statistical_Analysis/blob/ca4c2ff63a60dde14d8936904e341a2cec1268c7/Images/ttest%20lot3.png)
Lot 3 has sample mean of 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05, to reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.

## Study Design: MechaCar vs Competition.

To test Mechacar with competition, we can start by defining what factor will be most important for a car to stand out? As, fuel economy and price are two major pruchase factors, we can collect data for similar segment car models across all major manufacturers for past year:

Price of model: Dependent Variable
Engine Type: (Electric, Hybrid, Gasoline / Conventional): Dependent Variable
MPG (Fuel Economy): Independent Variable
Hypothesis: Null and Alternative

After determining which factors are key for the MechaCar's genre:

Null Hypothesis (Ho): MechaCar is similarly priced as competition based on key peformance variable

Alternative Hypothesis (Ha): MechaCar is NOT similarly priced as competition based on key peformance variable

Statistical Tests

A multiple linear regression would determine the variables that have the highest correlation with the price.
