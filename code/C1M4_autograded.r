# This cell loads the necesary libraries for this assignment
library(testthat)
library(tidyverse)
library(RCurl) #a package that includes the function getURL(), which allows for reading data from github.
library(ggplot2)

# Load in the data
octopus.data = read.table("octopi.dat")

names(octopus.data) = c("weight", "age", "beak_increments", "beak_measured")

# Shuffle the data so it isn't ordered
set.seed(42)
randomize.rows = sample(nrow(octopus.data))
octo.data = octopus.data[randomize.rows, ]
head(octo.data)

octo.data.reduced = NA
# your code here


# Test Cell
if(test_that("Size of cleaned data", {expect_equal(nrow(octo.data.reduced), 19)})){
    print("Data is the correct number of rows. ")
    print("Make sure this is correct, the rest of the questions depend on these data.")
}else{
    print("The reduced data doesn't have the correct number of rows. It should have 19.")
}

octo.train = NA
octo.test = NA
# your code here


# Test Cell
if(test_that("Check train and test sets are correct size", {expect_equal(nrow(octo.train), 15)
                                                             expect_equal(nrow(octo.test), 4)})){
    print("The training and test sets are the correct sizes.")
    print("Make sure these contain the correct data! All following problems depend on these being correct.")
}else{
    print("Incorrect sizes. Make sure you round down for the size of the training set.")
    print("Tip: Use the floor() function.")
}

octo.lmod = NA

octo.train.fit = NA
octo.train.upper = NA
octo.train.lower = NA

# your code here


# Test Cell
if(test_that("Testing number of predictions", {expect_equal(length(octo.train.fit), 15)})){
    print("Correct number of predictions.")
    print("Make sure your Prediction Intervals are for 95%.")
}else{
    print("Incorrect number of predictions.")
    print("Make sure you're predicting on the training set.")
}
# This cell has hidden test cases that will run after submission.

octo.test.fit = NA
octo.test.lower = NA
octo.test.upper = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

age = data.frame(age = 730)
brians.old.octopus.weight = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.
