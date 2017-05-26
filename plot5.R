## Question 5

getwd ()
setwd("/Users/MustafaChaudry/datasciencecoursera/Exploratory-Data-Analysis-Course-Project-2/Exploratory-Data-Analysis-Course-Project-2")

## To subset the SCC with vehicle values
Vehicle_Sources  <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
subsetSCC <- SCC[Vehicle_Sources, ]

## To merge the dataframes
NEISCC <- merge(balt, subsetSCC, by="SCC")

## To sum the emissions per year per type
Total_Emissions <- tapply(NEISCC$Emissions, NEISCC$year, sum)

## Creating bar plot
barplot(Total_Emissions, xlab = "Year", ylab = "Total Emission (ton)", 
        main = "Total Emission from motor sources in Baltimore", col="Black")
