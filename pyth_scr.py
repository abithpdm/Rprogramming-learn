testcase = int(input())
for i in range(testcase) :
     count=0
     p,m=input().split()
     for i in range(0,32): 
  
       
        if ((( p >>  i) & 1) != (( m >>  i) & 1)):  
             count=count+1
    
     print (count)
