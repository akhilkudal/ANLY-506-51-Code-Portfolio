x <- 1:5
y <- 6:10
z <- 11:15

# Create a matrix where x, y and z are columns
cbind(x, y, z)
#      x  y  z
# [1,] 1  6 11
# [2,] 2  7 12
# [3,] 3  8 13
# [4,] 4  9 14
# [5,] 5 10 15

# Create a matrix where x, y and z are rows
rbind(x, y, z)
#   [,1] [,2] [,3] [,4] [,5]
# x    1    2    3    4    5
# y    6    7    8    9   10
# z   11   12   13   14   15

# Creating a matrix with numeric and character columns will make everything a character:
cbind(c(1, 2, 3, 4, 5),
      c("a", "b", "c", "d", "e"))
#[1,] "1"  "a" 
#[2,] "2"  "b" 
#[3,] "3"  "c" 
#[4,] "4"  "d" 
#[5,] "5"  "e" 

# Create a matrix of the integers 1:10, with 5 rows and 2 columns
matrix(data = 1:10,
       nrow = 5,
       ncol = 2)
#[1,]    1    6
#[2,]    2    7
#[3,]    3    8
#[4,]    4    9
#[5,]    5   10

# Now with 2 rows and 5 columns
matrix(data = 1:10,
       nrow = 2,
       ncol = 5)
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    3    5    7    9
#[2,]    2    4    6    8   10

# Now with 2 rows and 5 columns, but fill by row instead of columns
matrix(data = 1:10,
       nrow = 2,
       ncol = 5,
       byrow = TRUE)
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    2    3    4    5
#[2,]    6    7    8    9   10

# Create a dataframe of survey data
survey <- data.frame("index" = c(1, 2, 3, 4, 5),
                     "sex" = c("m", "m", "m", "f", "f"),
                     "age" = c(99, 46, 23, 54, 23))
survey
#index sex age
#1     1   m  99
#2     2   m  46
#3     3   m  23
#4     4   f  54
#5     5   f  23

# Show me the structure of the survey dataframe
str(survey)
#'data.frame':	5 obs. of  3 variables:
#$ index: num  1 2 3 4 5
#$ sex  : Factor w/ 2 levels "f","m": 2 2 2 1 1
#$ age  : num  99 46 23 54 23

# Create a dataframe of survey data WITHOUT factors
survey <- data.frame("index" = c(1, 2, 3, 4, 5),
                     "sex" = c("m", "m", "m", "f", "f"),
                     "age" = c(99, 46, 23, 54, 23),
                     stringsAsFactors = FALSE)

# Print the result (it looks the same as before)
survey
#index sex age
#1     1   m  99
#2     2   m  46
#3     3   m  23
#4     4   f  54
#5     5   f  23

# Look at the structure: no more factors!
str(survey)
#'data.frame':	5 obs. of  3 variables:
#$ index: num  1 2 3 4 5
#$ sex  : chr  "m" "m" "m" "f" ...
#$ age  : num  99 46 23 54 23

# head() shows the first few rows
head(ChickWeight)
#weight Time Chick Diet
#1     42    0     1    1
#2     51    2     1    1
#3     59    4     1    1
#4     64    6     1    1
#5     76    8     1    1
#6     93   10     1    1

# tail() shows he last few rows
tail(ChickWeight)
#weight Time Chick Diet
#573    155   12    50    4
#574    175   14    50    4
#575    205   16    50    4
#576    234   18    50    4
#577    264   20    50    4
#578    264   21    50    4

# View() opens the entire dataframe in a new window
View(ChickWeight)
# result opens in a new window

# Print summary statistics of ToothGrowth to the console
summary(ToothGrowth)
#len        supp         dose      
#Min.   : 4.20   OJ:30   Min.   :0.500  
#1st Qu.:13.07   VC:30   1st Qu.:0.500  
#Median :19.25           Median :1.000  
#Mean   :18.81           Mean   :1.167  
#3rd Qu.:25.27           3rd Qu.:2.000  
#Max.   :33.90           Max.   :2.000

# Print additional information about ToothGrowth to the console
str(ToothGrowth)
#'data.frame':	60 obs. of  3 variables:
#$ len : num  4.2 11.5 7.3 5.8 6.4 10 11.2 11.2 5.2 7 ...
#$ supp: Factor w/ 2 levels "OJ","VC": 2 2 2 2 2 2 2 2 2 2 ...
#$ dose: num  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 ...

# What are the names of columns in the ToothGrowth dataframe?
names(ToothGrowth)
#[1] "len"  "supp" "dose"

# Return the len column of ToothGrowth
ToothGrowth$len
#[1]  4.2 11.5  7.3  5.8  6.4 10.0 11.2 11.2  5.2  7.0 16.5 16.5 15.2 17.3 22.5 17.3 13.6 14.5 18.8 15.5 23.6 18.5 33.9 25.5 26.4 32.5 26.7 21.5 23.3 29.5 15.2 21.5
#[33] 17.6  9.7 14.5 10.0  8.2  9.4 16.5  9.7 19.7 23.3 23.6 26.4 20.0 25.2 25.8 21.2 14.5 27.3 25.5 26.4 22.4 24.5 24.8 30.9 26.4 27.3 29.4 23.0

# What is the mean of the len column of ToothGrowth?
mean(ToothGrowth$len)
#[1] 18.81333

# Give me a table of the supp column of ToothGrowth.
table(ToothGrowth$supp)
#OJ VC 
#30 30 

# Give me the len AND supp columns of ToothGrowth
head(ToothGrowth[c("len", "supp")])
#len supp
#1  4.2   VC
#2 11.5   VC
#3  7.3   VC
#4  5.8   VC
#5  6.4   VC
#6 10.0   VC

# Create a new dataframe called survey
survey <- data.frame("index" = c(1, 2, 3, 4, 5),
                     "age" = c(24, 25, 42, 56, 22))

survey
#index age
#1     1  24
#2     2  25
#3     3  42
#4     4  56
#5     5  22

# Add a new column called sex to survey
survey$sex <- c("m", "m", "f", "f", "m")

# survey with new sex column
survey  
#index age sex
#1     1  24   m
#2     2  25   m
#3     3  42   f
#4     4  56   f
#5     5  22   m

# Change name of 1st column of df to "a"
names(df)[1] <- "a"
#Error in names(df)[1] <- "a" : names() applied to a non-vector
# Change name of 2nd column of df to "b"
names(df)[2] <- "b"
#Error in names(df)[2] <- "b" : names() applied to a non-vector

# Change the name of the first column of survey to "participant.number"
names(survey)[1] <- "participant.number"
survey
#participant.number age sex
#1                  1  24   m
#2                  2  25   m
#3                  3  42   f
#4                  4  56   f
#5                  5  22   m

# Change the column name from age to age.years
names(survey)[names(survey) == "age"] <- "years"
survey
#participant.number years sex
#1                  1    24   m
#2                  2    25   m
#3                  3    42   f
#4                  4    56   f
#5                  5    22   m



# Give me the rows 1-6 and column 1 of ToothGrowth
ToothGrowth[1:6, 1]
#[1]  4.2 11.5  7.3  5.8  6.4 10.0

# Give me rows 1-3 and columns 1 and 3 of ToothGrowth
ToothGrowth[1:3, c(1,3)]
#len dose
#1  4.2  0.5
#2 11.5  0.5
#3  7.3  0.5

# Give me the 1st row (and all columns) of ToothGrowth
ToothGrowth[1, ]
#len supp dose
#1 4.2   VC  0.5

# Give me the 2nd column (and all rows) of ToothGrowth
ToothGrowth[, 2]
#[1] VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC VC OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ OJ
#[55] OJ OJ OJ OJ OJ OJ
#Levels: OJ VC

# Create a new df with only the rows of ToothGrowth where supp equals VC
ToothGrowth.VC <- ToothGrowth[ToothGrowth$supp == "VC", ]

# Create a new df with only the rows of ToothGrowth where supp equals OJ and dose < 1
ToothGrowth.OJ.a <- ToothGrowth[ToothGrowth$supp == "OJ" &
                                  ToothGrowth$dose < 1, ]

# Get rows of ToothGrowth where len < 20 AND supp == "OJ" AND dose >= 1
subset(x = ToothGrowth,
       subset = len < 20 &
         supp == "OJ" &
         dose >= 1)

#len supp dose
#41 19.7   OJ    1
#49 14.5   OJ    1

# Get rows of ToothGrowth where len > 30 AND supp == "VC", but only return the len and dose columns
subset(x = ToothGrowth,
       subset = len > 30 & supp == "VC",
       select = c(len, dose))
#len dose
#23 33.9    2
#26 32.5    2

# What is the mean tooth length of Guinea pigs given OJ?
# Step 1: Create a subsettted dataframe called oj
oj <- subset(x = ToothGrowth,
             subset = supp == "OJ")

# Step 2: Calculate the mean of the len column from the new subsetted dataset
mean(oj$len)
#[1] 20.66333

mean(ToothGrowth$len[ToothGrowth$supp == "OJ"])
#[1] 20.66333

health <- data.frame("age" = c(32, 24, 43, 19, 43),
                     "height" = c(1.75, 1.65, 1.50, 1.92, 1.80),
                     "weight" = c(70, 65, 62, 79, 85))
health
#age height weight
#1  32   1.75     70
#2  24   1.65     65
#3  43   1.50     62
#4  19   1.92     79
#5  43   1.80     85

# Calculate bmi
health$weight / health$height ^ 2
#[1] 22.85714 23.87511 27.55556 21.43012 26.23457

# Save typing by using with()
with(health, height / weight ^ 2)
#[1] 0.0003571429 0.0003905325 0.0003902185 0.0003076430 0.0002491349

# Long code
health$weight + health$height / health$age + 2 * health$height
#[1] 73.55469 68.36875 65.03488 82.94105 88.64186

# Short code that does the same thing
with(health, weight + height / age + 2 * height)
#[1] 73.55469 68.36875 65.03488 82.94105 88.64186

#========================================================================================================================================================#

library(tidyverse)

typeof(letters)
#[1] "character"

typeof(1:10)
#[1] "integer"

x <- list("a", "b", 1:10)
length(x)
#[1] 3

1:10 %% 3 == 0
#[1] FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE

c(TRUE, TRUE, FALSE, NA)
#[1]  TRUE  TRUE FALSE    NA

typeof(1)
#[1] "double"

typeof(1L)
#[1] "integer"

1.5L
#Warning message:integer literal 1.5L contains decimal; using numeric value

x <- sqrt(2) ^ 2
x
#[1] 2

x - 2
#[1] 4.440892e-16

c(-1, 0, 1) / 0
#[1] -Inf  NaN  Inf

x <- "This is a reasonably long string."
pryr::object_size(x)
#152 B

y <- rep(x, 1000)
pryr::object_size(y)
#8.14 kB

x <- sample(20, 100, replace = TRUE)
y <- x > 10
sum(y)  # how many are greater than 10?
#[1] 55

mean(y) # what proportion are greater than 10?
#[1] 0.55

typeof(c(TRUE, 1L))
#[1] "integer"

typeof(c(1L, 1.5))
#[1] "double"

typeof(c(1.5, "a"))
#[1] "character"

sample(10) + 100
#[1] 107 108 104 106 110 109 105 102 103 101

runif(10) > 0.5
# [1]  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE  TRUE  TRUE

1:10 + 1:2
#[1]  2  4  4  6  6  8  8 10 10 12

1:10 + 1:3
#Warning message:
#In 1:10 + 1:3 :
#longer object length is not a multiple of shorter object length

tibble(x = 1:4, y = 1:2)
#Error: Tibble columns must have consistent lengths, only values of length one are recycled:
#* Length 2: Column `y`
#* Length 4: Column `x`

tibble(x = 1:4, y = rep(1:2, 2))
## A tibble: 4 x 2
#x     y
#<int> <int>
#1     1     1
#2     2     2
#3     3     1
#4     4     2

tibble(x = 1:4, y = rep(1:2, each = 2))
## A tibble: 4 x 2
#x     y
#<int> <int>
#1     1     1
#2     2     1
#3     3     2
#4     4     2

c(x = 1, y = 2, z = 4)
#x y z 
#1 2 4

set_names(1:3, c("a", "b", "c"))
#a b c 
#1 2 3

x <- c("one", "two", "three", "four", "five")
x[c(3, 2, 5)]
#[1] "three" "two"   "five"

x[c(1, 1, 5, 5, 5, 2)]
#[1] "one"  "one"  "five" "five" "five" "two" 

x[c(-1, -3, -5)]
#[1] "two"  "four"

x[c(1, -1)]
#Error in x[c(1, -1)] : only 0's may be mixed with negative subscripts

x[0]
#character(0)

x <- c(10, 3, NA, 5, 8, 1, NA)

# All non-missing values of x
x[!is.na(x)]
#[1] 10  3  5  8  1

# All even (or missing!) values of x
x[x %% 2 == 0]
#[1] 10 NA  8 NA

x <- c(abc = 1, def = 2, xyz = 5)
x[c("xyz", "def")]
#xyz def 
#5   2 

x <- list(1, 2, 3)
x
#[[1]]
#[1] 1
#
#[[2]]
#[1] 2
#
#[[3]]
#[1] 3

str(x)
#List of 3
#$ : num 1
#$ : num 2
#$ : num 

x_named <- list(a = 1, b = 2, c = 3)
str(x_named)
#List of 3
#$ a: num 1
#$ b: num 2
#$ c: num 3

y <- list("a", 1L, 1.5, TRUE)
str(y)
#List of 4
#$ : chr "a"
#$ : int 1
#$ : num 1.5
#$ : logi TRUE

z <- list(list(1, 2), list(3, 4))
str(z)
#List of 2
#$ :List of 2
#..$ : num 1
#..$ : num 2
#$ :List of 2
#..$ : num 3
#..$ : num 4

#Visual Listing
x1 <- list(c(1, 2), c(3, 4))
x2 <- list(list(1, 2), list(3, 4))
x3 <- list(1, list(2, list(3)))

#Sub-setting
a <- list(a = 1:3, b = "a string", c = pi, d = list(-1, -5))

#extracts a sub-list
str(a[1:2])
#List of 2
#$ a: int [1:3] 1 2 3

str(a[4])
#$ b: chr "a string"
#List of 1
#$ d:List of 2
#..$ : num -1
#..$ : num -5

str(a[[1]])
# int [1:3] 1 2 3

str(a[[4]])
#List of 2
#$ : num -1
#$ : num -5

a$a
#[1] 1 2 3

a[["a"]]
#[1] 1 2 3

#Attributes
x <- 1:10
attr(x, "greeting")
# NULL

attr(x, "greeting") <- "Hi!"
attr(x, "farewell") <- "Bye!"
attributes(x)
#$greeting
#[1] "Hi!"
#
#$farewell
#[1] "Bye!"

as.Date
#function (x, ...) 
#  UseMethod("as.Date")
#<bytecode: 0x000000000ac5c190>
#<environment: namespace:base>

methods("as.Date")
#[1] as.Date.character as.Date.default   as.Date.factor    as.Date.numeric   as.Date.POSIXct   as.Date.POSIXlt  
#see '?methods' for accessing help and source code

getS3method("as.Date", "default")
#function (x, ...) 
#{
#  if (inherits(x, "Date")) 
#    x
#  else if (is.logical(x) && all(is.na(x))) 
#    .Date(as.numeric(x))
#  else stop(gettextf("do not know how to convert '%s' to class %s", 
#                     deparse(substitute(x)), dQuote("Date")), domain = NA)
#}
#<bytecode: 0x000000000b6b3620>
#  <environment: namespace:base>

getS3method("as.Date", "numeric")
#function (x, origin, ...) 
#{
#  if (missing(origin)) 
#    stop("'origin' must be supplied")
#  as.Date(origin, ...) + x
#}
#<bytecode: 0x000000000b6b6228>
#  <environment: namespace:base>

x <- factor(c("ab", "cd", "ab"), levels = c("ab", "cd", "ef"))
typeof(x)
#[1] "integer"

attributes(x)
#$levels
#[1] "ab" "cd" "ef"
#
#$class
#[1] "factor"

x <- as.Date("1971-01-01")
unclass(x)
#[1] 365

typeof(x)
#[1] "double"

attributes(x)
#$class
#[1] "Date"

x <- lubridate::ymd_hm("1970-01-01 01:00")
unclass(x)
#[1] 3600
#attr(,"tzone")
#[1] "UTC"

typeof(x)
#[1] "double"

attributes(x)
#$class
#[1] "POSIXct" "POSIXt" 
#
#$tzone
#[1] "UTC"

attr(x, "tzone") <- "US/Pacific"
x
#[1] "1969-12-31 17:00:00 PST"

attr(x, "tzone") <- "US/Eastern"
x
#[1] "1969-12-31 20:00:00 EST"

y <- as.POSIXlt(x)
typeof
#[1] "list"

attributes(y)
#$names
#[1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"   "yday"   "isdst"  "zone"   "gmtoff"
#
#$class
#[1] "POSIXlt" "POSIXt" 
#
#$tzone
#[1] "US/Eastern" "EST"        "EDT" 

tb <- tibble::tibble(x = 1:5, y = 5:1)
typeof(tb)
#[1] "list"

attributes(tb)
#$names
#[1] "x" "y"
#
#$row.names
#[1] 1 2 3 4 5
#
#$class
#[1] "tbl_df"     "tbl"        "data.frame"

df <- data.frame(x = 1:5, y = 5:1)
typeof(df)
#[1] "list"

attributes(df)
#$names
#[1] "x" "y"
#
#$class
#[1] "data.frame"
#
#$row.names
#[1] 1 2 3 4 5