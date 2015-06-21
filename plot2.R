# Loading Data RDS
NEI <- readRDS("data/summarySCC_PM25.rds")
SCC <- readRDS("data/Source_Classification_Code.rds")

# Data for testing
NEIsample <- NEI[sample(nrow(NEI), size = 5000, replace = F), ]

# Subsets data and appends two years in one data frame
MD <- subset(NEI, fips == '24510')

# Generating Graph
png(filename = 'plot2.png')
barplot(tapply(X = MD$Emissions, INDEX = MD$year, FUN = sum), main = 'Total Emission in Baltimore City, MD', xlab = 'Year', ylab = expression('PM'[2.5]))
dev.off()