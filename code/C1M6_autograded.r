# This cell loads the required packages
library(testthat)
library(tidyverse)
library(ggplot2)
library(leaps)
library(MASS)
library(faraway)

amazon = read.csv("amazon.txt", sep="\t")
df = data.frame(aprice = amazon$Amazon.Price, lprice = as.numeric(amazon$List.Price),  
                pages = amazon$NumPages, width = amazon$Width, weight = amazon$Weight..oz,  
                height = amazon$Height, thick = amazon$Thick, cover = amazon$Hard..Paper)

df$lprice[which(is.na(df$lprice))] = mean(df$lprice, na.rm = TRUE)
df$weight[which(is.na(df$weight))] = mean(df$weight, na.rm = TRUE)
df$pages[which(is.na(df$pages))] = mean(df$pages, na.rm = TRUE)
df$height[which(is.na(df$height))] = mean(df$height, na.rm = TRUE)
df$width[which(is.na(df$width))] = mean(df$width, na.rm = TRUE)
df$thick[which(is.na(df$thick))] = mean(df$thick, na.rm = TRUE)
df = df[-205,]
summary(df)

AIC.full = NA
BIC.full = NA
adj.R2.full = NA

# your code here


# Test Cell
# Check that the correct number of predictors were used in the model.
if(test_that("Check number of model parameters.", expect_equal(length(lmod.full$coefficients), 8))){
    print("Correct number of parameters in the model.")
}else{
    print("Make sure you're not using the Port column!")
}
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

AIC.part = NA
BIC.part = NA
adj.R2.part = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

selected.model.AIC = NA
selected.model.BIC = NA
selected.model.adj.R2 = NA
# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

# Test Cell
# This cell has hidden test cases that will run after submission.

validated.model = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Load in the data
divorce = read.csv("divusa.txt", sep="\t")
summary(divorce)
head(divorce)

lm_divorce = NA

# your code here



# Test Cell
# This cell has hidden test cases that will run after submission.

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

prob.2.c = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.


