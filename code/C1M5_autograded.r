# This cell loads the necesary libraries for this assignment
library(testthat)
library(tidyverse)
library(ggplot2)

# Load the data
beer.data = read.table("beer.dat", sep="")
names(beer.data) = c("time", "foam.height", "beer.height")
beer.data

beer.lmod = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

foam.pred = 1
time.pred = NA

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Load the data
data.a = read.csv("prob.2.a.csv", sep=",")
head(data.a)

prob.2.a = NA #assign as TRUE or FALSE

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Load the data
b.data = read.csv("prob.2.b.csv", sep=",")
head(b.data)

prob.2.b = NA #assign as TRUE or FALSE

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Load the data
c.data = read.csv("prob.2.c.csv", sep=",")
head(c.data)

prob.2.c = NA # assign as TRUE or FALSE

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.

# Load the data
d.data = read.csv("prob.2.d.csv", sep=",")
head(d.data)

prob.2.d = NA #assign as TRUE or FALSE

# your code here


# Test Cell
# This cell has hidden test cases that will run after submission.
