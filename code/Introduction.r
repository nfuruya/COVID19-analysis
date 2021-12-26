#This package will be used to autograde some of your answers
library(testthat)

# your code here


# your code here


# your code here


# your code here


#assign 1, 2, 3, 4, 5 to the variable v1
# your code here


#accessing data stored in variable v1
v1
#create two vectors, then join them together in a new vector
v2 = c(9, 10, 1)
new = c(v1, v2)
new

# Test Cell

# your code here


f1
f2 = factor(c("a",7,"blue", "blue"))
f2

f1*3

# Test Cell

x <- rnorm(50, mean=5, sd=1) #generates 50 random numbers from a gaussian with mean 5 and sd 1. Don't worry...you'll know what this means soon!
hist(x, density = 20)
length(x) #return the length of x
sum(x) #sum the numbers in x
mean(x) #calculate the mean of the numbers in x
var(x) #calculate the variance of the numbers in x
sd(x) #calculate the standard deviation of x
median(x) #calculate the median of x
range(x) #calculate the range of x
log(x) #calculate the natural log of x
summary(x) #return 5-number summary of x

hist(x, density = 20, freq = FALSE) #histogram of those random numbers; freq = FALSE makes x a 'density' (integrates to 1); density shades the boxes
curve(dnorm(x,mean = mean(x),sd = sd(x)),from = min(x), to = max(x), add = TRUE) #overlay of normal density

a = seq(2, 16, by = 2)
a
a[c(1, 4)]

###
a[-c(1,5)]

# your code here


# Test Cell

# your code here


# your code here


# your code here


y = function(input){
    #stuff
    return(output)
}

# your code here


#set.seed(99)
f1 = function(){
    s = sample(c("H", "T"), size = 4, replace = TRUE)
    return(s)
}

f1()

f2 = function(){
    s = sample(c(1,2,3,4,5,6), size = 8, replace = TRUE)
    return(s)
}

f2()

n = 20; 
M = matrix(NA, ncol = 2, nrow = 10); #check the help file so that you know what this does!

for (i in 1:n){
    # your code here
    
}
M

m = matrix(NA, nrow = 2, ncol = 1)
for (i in 1:2){
    # your code here
    
}
m
colMeans(M)

# your code here


# Test Cell

apply(M, 1, var)
# your code here


# Test Cell

# your code here


# your code here


d = c(1, 2, 3, 4)
e = c("red", "white", "blue", NA)
f = c(TRUE, TRUE, TRUE, FALSE)

# your code here




#rename columns of data frame
names(mydataframe) = c("ID", "Color", "Passed")
mydataframe

#name columns while creating data frame
dataframe2 = data.frame(ID=d, Color=e, Passed=f)
dataframe2

# your code here


###Writing data to file
#write.table(mydataframe, paste("~/Google Drive/University of Colorado/example.txt", sep = ""), sep = "\t")

#data = read.table(paste("~/Google Drive/University of Colorado/Boulder",
    #                     "example.txt", sep = ""), header = TRUE, sep = "\t")
#head(data)

library(RCurl) #a package that includes the function getURL(), which allows for reading data from github.
library(ggplot2) #a package for nice plots!

#getURL is a nice way of reading in data from the web
url = getURL(paste0("https://raw.githubusercontent.com/bzaharatos/",
                    "-Statistical-Modeling-for-Data-Science-Applications/",
                    "master/Modern%20Regression%20Analysis%20/Datasets/amazon.txt"))
#stores the data in the dataframe amazon
amazon = read.csv(text = url, sep = "\t")

#prints the names in the dataframe
names(amazon)

df = data.frame(aprice = amazon$Amazon.Price, lprice = as.numeric(amazon$List.Price),  
                pages = amazon$NumPages, width = amazon$Width, weight = amazon$Weight..oz,  
                height = amazon$Height, thick = amazon$Thick, cover = amazon$Hard..Paper)

summary(df)


which(is.na(df$lprice))

# your code here

summary(df)



# your code here


# your code here


# your code here




levels(df$cover) = c("Hardcover","Paperback")
summary(df)

# your code here


# your code here


# your code here


### Reading data from the web...
read.table("http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat")
