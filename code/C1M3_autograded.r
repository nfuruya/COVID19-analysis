# This cell loads the necesary libraries for this assignment
library(testthat)
library(tidyverse)
library(RCurl)  # a package that includes the function getURL(), which allows for reading data from github.
library(ggplot2)

mpg.data = read_table("auto-mpg.data")
names(mpg.data) = c("mpg", "cylinders", "displacement", "horsepower", "weight", 
                    "accel", "model_year", "origin", "car_name")
mpg.data$horsepower = as.numeric(mpg.data$horsepower)
mpg.data = na.omit(mpg.data)

summary(mpg.data)
str(mpg.data)
head(mpg.data)

mod.1 = NA
mod.2 = NA
mod.3 = NA
# your code here


# Test Cell
# Make sure that each model is a linear model
if(test_that("Testing model types", 
             {(expect_is(mod.1, "lm"))
              (expect_is(mod.2, "lm"))
              (expect_is(mod.3, "lm"))})){
    print("All models are linear models.")
}else{
    print("At least one of the models isn't a linear model!")
    print("Make sure you're using the lm() function.")
}
# This cell has hidden test cases that will run after submission.

final.model = NA
# your code here


# Test Cell
if(test_that("Check final.model class", {expect_is(final.model, "lm")})){
    print("You've selected a model! Make sure you're confident in your answer.")
}else{
    print("final.model is not a linear model.")
    print("To copy the selected model use `final.model = mod.#`")
}
# This cell has hidden test cases that will run after submission.

weight.CI.lower = NA
weight.CI.upper = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

MSE.1 = NA
MSE.2 = NA
MSE.3 = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Load in the data
weather.data = read.csv("weatherHistory.csv")
weather.data = na.omit(weather.data)
head(weather.data)


cor.speed = NA
cor.vis = NA
cor.pres = NA
data.n = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

weather.lmod.small = NA
weather.lmod.all = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

prob.3.c.1 = NA

prob.3.c.2 = NA

prob.3.c.3 = NA

prob.3.c.4 = NA

# Save the selected model into this variable.
prob.3.c.5 = NA

prob.3.c.6 = NA

# your code here


# TEST CELL
if (!test_that("Checking type() of answer", expect_is(prob.3.c.5, "lm"))){
    print("Make sure prob.3.c.5 is your selected linear model. Should be of type 'lm'")
}
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.
