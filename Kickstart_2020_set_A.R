#program for google kick start 2020 set A (House allocation problem)
testcases<-as.integer(readline())
while (0<testcases)
{
  constraints<-strsplit(readline()," ")[[1]]
  prices<-strsplit(readline()," ")[[1]]
  sortedprice <-sort(prices)
  print(testcases)
  print(constraints)
  print(prices)
  testcases<-testcases-1
  
}
