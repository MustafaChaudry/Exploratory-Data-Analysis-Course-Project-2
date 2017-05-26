## Question 4

getwd ()
setwd("/Users/MustafaChaudry/datasciencecoursera/Exploratory-Data-Analysis-Course-Project-2/Exploratory-Data-Analysis-Course-Project-2")

## To subset SCC with coal values
Coal_Sources  <- grepl("coal", SCC$Short.Name, ignore.case=TRUE)
subsetSCC <- SCC[Coal_Sources, ]

## To merge the dataframes
NEISCC <- merge(NEI, subsetSCC, by="SCC")

## To sum the emissions per year
Total_Emissions <- tapply(NEISCC$Emissions, NEISCC$year, sum)

## Creating bar plot
barplot(Total_Emissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission from coal sources", col="Purple")
