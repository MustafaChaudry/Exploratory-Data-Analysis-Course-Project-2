## Question 2

getwd ()
setwd("/Users/MustafaChaudry/datasciencecoursera/Exploratory-Data-Analysis-Course-Project-2/Exploratory-Data-Analysis-Course-Project-2")

## To read and subset the data
balt <- subset(NEI, fips == "24510")

## To find the sum of the emissions per year
Total_Emissions <- tapply(balt$Emissions, balt$year, sum)

## Creating bar plot
barplot(Total_Emissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission/Year in Baltimore", col="Red") 