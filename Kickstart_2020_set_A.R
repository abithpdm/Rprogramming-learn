#program for google kick start 2020 set A (House allocation problem)
testcases<-as.integer(readline())
while (testcases>0)
{
  constraints<-as.integer(strsplit(readline()," ")[[1]])
  prices<-as.integer(strsplit(readline()," ")[[1]])
  sortedprice <-sort(prices)
  count<-0
  balance<-constraints[2]
  for(i in as.integer(length(prices)))
  {
    if(sortedprice[i]<=balance)
      {count<-count+1
      balance<-balance-sortedprice[i]}
    else
      {break}
  }
  print(count)
    
}

  
  

