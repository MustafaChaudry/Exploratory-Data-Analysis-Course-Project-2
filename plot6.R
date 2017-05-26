## Question 6

Los <- subset(NEI, fips == "06037")

## To subset the SCC with vehicle values
Vehicle_Sources  <- grepl("vehicle", SCC$SCC.Level.Two, ignore.case=TRUE)
subsetSCC <- SCC[Vehicle_Sources, ]

## To merge the dataframes and add individual city variables
Data_Balt <- merge(balt, subsetSCC, by="SCC")
Data_Balt$city <- "Baltimore City"
Data_Los <- merge(Los, subsetSCC, by="SCC")
Data_Los$city <- "Los Angeles County"
Total_data <- rbind(Data_Balt, Data_Los)

## To sum the emissions per year per type
Aggregate_data <- aggregate(Emissions ~ year + city, Total_data, sum)

## Creating the ggplot
g <- ggplot(Aggregate_data, aes(year, Emissions, color = city))
g + geom_line() +
        xlab("Year") +
        ylab(expression("Total PM"[2.5]*" Emissions")) +
        ggtitle("Total Emissions from motor sources in Baltimore and Los Angeles")
