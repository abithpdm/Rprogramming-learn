#connecting to public genome mysql , dbconnect function connects to a database
#user = genome , host is obtained from ucsc website
#ucsdb is the connection


ucsDb <- dbConnect(MySQL(),user="genome",host="genome-mysql.soe.ucsc.edu")

#dbgetquery command is used to get a query , "show databases" is mysql command
result <- dbGetQuery(ucsDb,"show databases;");dbDisconnect(ucsDb)

hg19 <- dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")
allTables <- dbListTables(hg19)
length(allTables)

query <- dbSendQuery(hg19,"select * from affyU133Plus2 where misMatches between 1 and 3")
#in the abouve statement we send query to store remotely
#the remotely stored data is the fetched in  query
affyMis <- fetch(query); quantile(affyMis$misMatches)