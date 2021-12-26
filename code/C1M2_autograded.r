# This cell loads the necesary libraries for this assignment
library(testthat)
library(tidyverse)
library(ggplot2) #a package for nice plots!
library(dplyr)

college = read.csv("graduate-earnings.txt", sep="\t")

#prints the names in the dataframe
college = college %>%
    select(school = School, earn = Earn, sat = SAT, act = ACT, price = Price)
summary(college)

slr_earn = NA

# your code here


summary(slr_earn)

# Test Cell
if(test_that("Does the function return a model?", {expect_is(slr_earn, "lm")})){
    print("Does the function return a model? ... Correct")
    print("Just make sure your predictor and response variables are correct!")
}else{
    print("Test Failed. Tip: Try using the lm() function!")
}


slope = NA
intercept = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

ggplot(college, aes(x = sat, y = earn)) + 
    geom_point( alpha = 0.5) + 
    geom_smooth(method = "lm", se = F, col = "#CFB87C") + 
    xlab("SAT Score") + ylab("Yearly Earnings")+
    theme_bw()

# your code here


sum_of_residuals = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

yhat = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

hat_matrix = NA
sum_of_diagonals = NA

# your code here


# Test Cell
# The hat matrix should be 7x7. Let's check that.
if(test_that("Check matrix dimensions", expect_equal(dim(hat_matrix), c(706,706) ))){
    print("Correct Dimensions!")
}else{
    print("Incorrect dimensions. Make sure your hat matrix equation matches the equation in the videos.")
}
# This cell has hidden test cases that will run after submission.

# Read in the data
plant = NA
path = "plant_diverse_island.csv"

# your code here


head(plant)

mlr_plant = NA

# your code here


summary(mlr_plant)

# Test Cell
if(test_that("Test model type", {expect_is(mlr_plant, "lm")})){
    print("Is a linear model? ... Correct")
    print("Make sure you are modeling the correct predictors!")
}else{
    print("Incorrect type. Tip: Try the lm() function!")
}
# This cell has hidden test cases that will run after submission.

MSE_plant = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.


