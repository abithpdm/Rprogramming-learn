#program for google kick start 2020 set A (House allocation problem)
testcases<-as.integer(readline())
while (testcases>0)
{
  constraints<-as.integer(strsplit(readline()," ")[[1]])
  prices<-as.integer(strsplit(readline()," ")[[1]])
  sortedprice <-sort(prices)
  balance<-constraints[2]
  for(i in seq_along(prices))
  {
    if(sortedprice[i]<=balance)
      {count<-as.integer(count+1)
      balance<-balance-sortedprice[i]
      }
    
  }
  print(count)
  testcases<-testcases-1
  count<-0
    
}

  
  

