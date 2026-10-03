# ###################################################################
## Diya Patel - Assignment week 1
#######################################################################
library(openintro)

## Question 1 

1- plot a scatterplot between rate of assault and murder
plot(USArrests$Assault,USArrests$Murder, xlab="Rate of Assault", ylab="Rate of Murder", main = "Rate of Assault vs Murder")

# use identify() function to label datapoints on the scatterplot
identify(USArrests$Assault, USArrests$Murder, rownames(USArrests))

#################################################################################
## Q2 
# create a scatterplot between vehicle weight and horsepower
plot(mtcars$wt, mtcars$hp, xlab="vehicle weight (1000 lbs)", ylab="Gross horsepower", main="Vehicle weight vs horsepower")

# attach mtcars for convenience
attach(mtcars)

# find median of x-axis(weight)
median_wt = median(wt)
abline(v=median_wt, col="dodgerblue", lty=3,lwd=3)

# find median of lower and upper halves of weights (x-axis)
grp1 = wt<median_wt
median_wt1 = median(wt[grp1])
median_wt2 = median(wt[!grp1])
abline(v=median_wt1, col="green4", lwd=2)
abline(v=median_wt1, col="green4", lwd=2)

# find median of y-axis
median_hp = median(hp)
median_hp1 = median(hp[grp1])
median_hp2 = median(hp[!grp1])
abline(h=median_hp1, col="orange", lwd=2)
abline(h=median_hp2, col="orange", lwd=2)

# identify the points
points(c(median_wt1, median_wt2), c(median_hp1, median_hp2), pch=16, cex=2, col="orchid3")

# compute the slope and intercept
rise= median_hp2 - median_hp1
run = median_wt2 - median_wt1
slope = rise/run

intercept = median_hp1 - (slope*median_wt1)
abline(intercept, slope, col="orchid", lwd=3)

# create the median-median line
lines(c(median_wt1, median_wt2), c(median_hp1, median_hp2), col="red", lwd=3)

# b - interprete the line by interpreting the meaning of the coefficiets

###############################################################################
# 3 
# 3a - plot a scatterplot of vehicle speed vs stopping distance
plot(cars$speed, cars$dist, xlab="Vehicle speed (mph)", ylab="Stopping distance(ft)", main = "Vehicle speed vs stopping distance")
model = lm(data=cars, cars$dist~ cars$speed)
model$coef
abline(model, col="skyblue", lwd=3)

# b - write the equation of the line using the slope and the intercept

###################################################################################
# 4 - 
plot(satgpa$hs_gpa, satgpa$sat_sum, xlab="High School GPA", ylab="Total SAT score", main="High School GPA vs Total SAT score")
model_sat = lm(data=satgpa, satgpa$sat_sum~satgpa$hs_gpa)
model_sat$coef
abline(model_sat, col="deeppink", lwd=3)

# calculate mean sat score
mean_sat = mean(satgpa$sat_sum)

# compute fitted values
model_fit = (model_sat$coefficients[2] * satgpa$hs_gpa) + model_sat$coefficients[1]
sat_obs = satgpa$sat_sum

# compute SST
SSTotal = sum((mean_sat-sat_obs)^2)
SSTotal


# calculate SSE
SSError= sum((sat_obs-model_fit)^2)
SSError

# calculate SSR
SSR = SSTotal - SSError
SSR

# display R2 score
summary(model_sat)$r.square