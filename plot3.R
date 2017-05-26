
## Question 3

getwd ()
setwd("/Users/MustafaChaudry/datasciencecoursera/Exploratory-Data-Analysis-Course-Project-2/Exploratory-Data-Analysis-Course-Project-2")

library(ggplot2)

## To find the sum of the emissions per year per type
Aggregate_data <- aggregate(Emissions ~ year + type, balt, sum)

## Creating the ggplot
g <- ggplot(Aggregate_data, aes(year, Emissions, color = type))
g + geom_line() +
        xlab("Year") +
        ylab(expression("Total PM"[2.5]*" Emissions")) +
        ggtitle("Total Emissions/Type in Baltimore")