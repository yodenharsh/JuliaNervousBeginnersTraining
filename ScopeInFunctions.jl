str = "label lol"
z = 55 
println("Assigning global variable z, value 55")
function eg1(x) #operations inside the function don't affect the value of the global variable
    z = 10 
    return z
end
println("printing function eg1 : ",eg1(z))
println(z)
function eg2(x) #however, using the keyword (global) can change the value of the global variable value
    global z = 10
    return z
end 
println("printing function eg2 where we have global z = ' ' rather than just z = ' '  : ",eg2(z))
println(z)
println("However operating on global arrays inside functions changes their values without using global variables")
function IntegerBehaviour()
    aa = 2
    bb = aa
    bb = 3 
    println("Integer value of this function (check source code) is ", bb)
end
IntegerBehaviour()
function ArrayBehaviour()
    aa=[1,2]
    bb = aa 
    bb[2]=3
    println("Printing aa : $aa \nPrinting bb : $bb \nNotice that (check source code) when doing bb=aa, no new\nmemory is allocated and neither is\nno new value created")
    println("It is copy by reference basically. This is to favour performance")
end
ArrayBehaviour()