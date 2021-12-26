# This cell loads the necesary libraries for this assignment
library(testthat)
library(tidyverse)

# Load the data
turtle.data = read.csv("turtle.csv")
head(turtle.data)

# Histograms of the age and income features
par(mfrow = c(1, 2))
hist(turtle.data$age, col="#CFB87C")
hist(turtle.data$income, col="#CFB87C")

g = ggplot(turtle.data, aes(x=age, y=income)) + 
    # This function adds the points for the scatterplot
    geom_point() +
    # This function adds the title (and potentially other labels)
    labs(title="Scatterplot of Income vs. Age")
g

age.centered = NA
income.centered = NA

g.centered = NA # Look at the code cell above for the basic ggplot() syntax.

# your code here
age.centered = turtle.data$age - mean(turtle.data$age)
income.centered = turtle.data$income - mean(turtle.data$income )
df.centered = data.frame(age=age.centered, income=income.centered)
g.centered = ggplot(df.centered, aes(x=age.centered, y=income.centered)) + 
    # This function adds the points for the scatterplot
    geom_point() +
    # This function adds the title (and potentially other labels)
    labs(title="Scatterplot of Centered Income vs. Age")
g.centered

# Test Cell

if(test_that("Checking the class of the plot", {expect_is(g.centered, "ggplot")})){
    print("Good job.")
    print("Make sure your answers are correct, there are hidden tests and you won't recieve feedback on them until you submit your assignment!")
}else{
    print("Make sure to use ggplot for your plotting.")
    print("It's annoying at first, but it's a very powerful visualization tool once you get the hang of it.")
}

# Note: Each question may have some hidden tests!
# Make sure you're confident in your answers!


age.stand = NA
income.stand = NA
g.stand = NA

# your code here
age.stand = age.centered / sd(turtle.data$age)
income.stand = income.centered / sd(turtle.data$income)
df.stand = data.frame(age=age.stand, income=income.stand)
g.stand = ggplot(df.stand, aes(x=age.stand, y=income.stand)) + 
    # This function adds the points for the scatterplot
    geom_point() +
    # This function adds the title (and potentially other labels)
    labs(title="Scatterplot of Standardized Income vs. Age")
g.stand

# Test Cell
# This cell has hidden test cases that will run after submission.


g.age = NA
g.income = NA

# your code here

g.age = ggplot(df.stand, aes(x=age.stand)) + 
    # This function adds the points for the scatterplot
    geom_density() +
    # This function adds the title (and potentially other labels)
    labs(title="Density Plot of Standardized Age") +
#     stat_function(fun = dnorm, args = list(mean = mean(df.stand$age.stand), sd = sd(df.stand$age.stand)))
    stat_function(fun = dnorm, args = list(mean = mean(age.stand), sd = sd(age.stand)))
g.age

g.income = ggplot(df.stand, aes(x=income.stand)) + 
    # This function adds the points for the scatterplot
    geom_density() +
    # This function adds the title (and potentially other labels)
    labs(title="Density Plot of Standardized Income") +
    stat_function(fun = dnorm, args = list(mean = mean(income.stand), sd = sd(income.stand)))
g.income

g.turtle = NA
turtle.slope = NA

# your code here
# your code here
g.turtle = ggplot(turtle.data, aes(x=income, y=turtle_rating)) + 
    # This function adds the points for the scatterplot
    geom_point() +
    # This function adds the title (and potentially other labels)
    labs(title="Scatterplot of  Income vs. Turtle Rating") +
    geom_smooth(method="lm", se=FALSE, color="#CFB87C")
turtle.slope = lm(turtle_rating ~ income, data = turtle.data)$coefficients[2]
g.turtle
turtle.slope

# Test Cell
if(!test_that("Checking class of plot", {expect_is(g.turtle, "ggplot")})){
    print("Make sure your plots are made in ggplot.")
}
# This cell has hidden test cases that will run after submission.

g.turtle.stand = NA
turtle.slope.stand = NA

# your code here
df.stand$turtle_rating = turtle.data$turtle_rating

# your code here
g.turtle.stand = ggplot(df.stand, aes(x=income, y=turtle_rating)) + 
    # This function adds the points for the scatterplot
    geom_point() +
    # This function adds the title (and potentially other labels)
    labs(title="Scatterplot of  Standardized Income vs. Turtle Rating") +
    geom_smooth(method="lm", se=FALSE, color="#CFB87C")
turtle.slope.stand = lm(turtle_rating ~ income, data = df.stand)$coefficients[2]
g.turtle.stand
turtle.slope.stand

# Test Cell
test_that("Check class of plot", {expect_is(g.turtle.stand, "ggplot")})
# This cell has hidden test cases that will run after submission.


# Answer each question by replacing each NA with the corresponding boolean of TRUE or FALSE.
prob.2.1 = NA

prob.2.2 = NA

prob.2.3 = NA

prob.2.4 = NA

prob.2.5 = NA

prob.2.6 = NA

# your code here
prob.2.1 = TRUE

prob.2.2 = TRUE

prob.2.3 = FALSE

prob.2.4 = TRUE

prob.2.5 = FALSE

prob.2.6 = TRUE

# Test Cell

# Make sure the type of the answers is boolean
if(test_that("Check answer types", {expect_is(prob.2.1, "logical")})){
    print("Answers are booleans")
}else{
    print("Answers aren't booleans! Make sure they are, or else they will be incorrect.")
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
