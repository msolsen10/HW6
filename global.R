library(shiny)

library(dataRetrieval)
siteNo <- c("09234500")
pCode <- "00010"
start.date <- "2017-1-01"
end.date <- "2017-12-31"
siteINFO <- readNWISsite(siteNo)
sitename <- siteINFO[3]
df1 <- readNWISuv(siteNumbers = siteNo,
                  parameterCd = pCode,
                  startDate = start.date,
                  endDate = end.date)
names(df1)[4] <- "Temperature_C"
#Assign NA to QC data
for (j in nrow(df1)){
  if (df1[j,2] == -9999){
    df1[j,2] <- NA
  }
}

