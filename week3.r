#Read in your data
library(readr)
ozone <- read_csv("data/Ozone_data.csv")

#removing space from column headers
names(ozone) <- make.names(names(ozone))

#checking the number of rows and columns
nrow(ozone)
#66869

ncol(ozone)
#55

#running str() on the dataset
str(ozone)

#looking at the top and bottom of the data with the head() and tail() functions
head(ozone[, c(6:7, 10)])

tail(ozone[, c(6:7, 10)])

#looking at the Time.Local variable to see what time measurements are recorded as being taken
table(ozone$Latitude)

#looking at which observations were measured at Latitude "36.7841"
library(dplyr)
library(stats)
filter <- dplyr::filter
filter(ozone, Latitude == "36.7841")

#lokking at filtered data for dew more conditions
filter(ozone, State.Code == "36") 
filter(ozone, County.Code == "033") 
filter(ozone, Date.of.Last.Change == "2014-09-30")


#seeing exactly how many states are represented in this dataset
select(ozone, State.Name) %>% unique %>% nrow

#looking at the unique elements of the State.Name variable to see what's going on
unique(ozone$State.Name)

#looking at the metrics used for ozone measurement
summary(ozone$Metric.Used)

#getting details on the distribution by looking at deciles of the percentile data
quantile(ozone$X95th.Percentile, seq(0, 1, 0.1))

#looking at the top 10 counties in this ranking
head(ranking, 10)

#looking at the 10 lowest counties too
tail(ranking, 10)

#looking at one of the higest level counties, Mariposa County, California
filter(ozone, State.Name == "California" & County.Name == "Mariposa") %>% nrow

#converting the date variable into a Date class and spliting the data by month to look at the average hourly levels
filter(ozone, State.Name == "California" & County.Name == "Mariposa") %>%
  +         mutate(month = factor(months(Date.of.Last.Change), levels = month.name)) %>%
  +         group_by(month) %>%
  +         summarize(ozone = mean(Sample.Measurement))
#Error - conditions inside filter function are not working 

#looking at one of the lowest level counties, Caddo County, Oklahoma and checking the data to see if anything funny is going on
filter(ozone, State.Name == "Oklahoma" & County.Name == "Caddo") %>% nrow

filter(ozone, State.Name == "Oklahoma" & County.Name == "Caddo") %>%
  +         mutate(month = factor(months(Date.Local), levels = month.name)) %>%
  +         group_by(month) %>%
  +         summarize(ozone = mean(Sample.Measurement))
#Error - conditions inside filter function are not working 

#setting our random number generator and resampling the indices of the rows of the data frame with replacement
set.seed(10234)
N <- nrow(ozone)
idx <- sample(N, N, replace = TRUE)
ozone2 <- ozone[idx, ]

#reconstructing our rankings of the counties based on this resampled data
ranking2 <- group_by(ozone2, State.Name, County.Name) %>%
  +         summarize(ozone = mean(Sample.Measurement)) %>%
  +         as.data.frame %>%
  +         arrange(desc(ozone))
#Error - conditions inside summarize function are not working 

#comparing the top 10 counties from our original ranking and the top 10 counties from our ranking based on the resampled data
cbind(head(ranking, 10),+ head(ranking2, 10))
#Error in FUN(left) : invalid argument to unary operator

#looking at the bottom of the list to see if there were any major changes
cbind(tail(ranking, 10),
      +       tail(ranking2, 10))
#Error in FUN(left) : invalid argument to unary operator