## Question 1

getwd ()
setwd("/Users/MustafaChaudry/datasciencecoursera/Exploratory-Data-Analysis-Course-Project-2/Exploratory-Data-Analysis-Course-Project-2")

## To read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## To find the sum of the emissions per year
Total_Emissions <- tapply(NEI$Emissions, NEI$year, sum)

## Creating bar plot
barplot(Total_Emissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission/Year", col="Blue")
