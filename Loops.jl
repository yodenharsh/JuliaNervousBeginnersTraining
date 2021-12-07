import REPL
loopVar = 0
while(loopVar<4)
    println(loopVar)
    global loopVar+=1
end
a=0 ; b =1
sum=0
while(sum>=0) #Use ctr+C to stop infinite loop 
    global sum =a + b
    println(sum)
   global a = b;global b = sum;
end
for loopvar in 1:4  #in is a keyword 
    println(loopvar)         
    b = 'α' + loopvar
    loopvar = loopvar + 20 #value of loopvar inside the loop doesn't affect the condition 
    println(loopvar)
end
[(println('α' + loc1)) for loc1 in 1:4] #comprehension is a type of for loop 