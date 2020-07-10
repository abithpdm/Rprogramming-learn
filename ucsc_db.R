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
# dbclear(<queryname>) to clear the remote query from the server
affyMis <- fetch(query); quantile(affyMis$misMatches)

#load rhdf5
#to create hdf5 file
created=h5createFile("example.h5")

#create file within file

created =h5createGroup("example.h5","foo")

A=matrix(1:10,nr=5,nc=2)
h5write(A,"example.h5","foo/A")
B=array(seq(0.1,2.0,by=0.1),dim = c(5,2,2))
attr(B,"scale")<-"liter"

