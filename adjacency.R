#prompt is used to display msg while entering input
testcase=readline(prompt="enter")

for (i in testcase)

   {
     initiator <-1
     string <-as.character(readline())
     splittedstring<-strsplit(string,"")
   while(initiator!=length(string)){
    if(splittedstring[[initiator]]==splittedstring[[initiator+1]])
    {
      print("equal")
    }
 }
  splittedstring[[initiator]]

 }
