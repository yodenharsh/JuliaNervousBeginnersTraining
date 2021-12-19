#A anonymous function doesn't have a name
#The objective is to define a function really briefly and discard it.
#=map returns an array for every element in the range or input.
map applies a function to range or array=#
println(map(x -> x^2,1:9))
println(map(x->x^2,["abC", 2.0])) #strings have to be in an array (with it being the only element if you want)
y = [x for x in "abc"] #char array ['a','b','c']
println(join(map(x->x^3 ,y), " ")) #(   ," ") is delimiter for join
println(join(map(x->x^2 + 2x + 1, -5:3)))
#=filter, on the other hand, only retains the values based on the given condition or test=# 
y = [x for x in "hella you done yourself"]
println(y)
println(filter(x->x < 'f', y))
filter!(x->x < 'f', y) #also modifies the value of y
println("printing y after filter! : ",y) 
#comprehension can be used instead of map if you want. Depends on your convenience 