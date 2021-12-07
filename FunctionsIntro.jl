function add(a,b)
    sum = a + b
    return sum 
end 
println(add(5,4))
function spin(str) #using reverse() is better. This is just for understanding
    result = reverse(str)
    println("This is working")
    return result
end 
function spin(str,k) #using polymorphism 
    start = str[1:k]
    last = str[end-k+1:end]
    mid = str[k+1:end-k] 
    println("This is mid : ",mid)
    return join([start,spin(mid),last])
end
stri = "The biggest stri in this entire town is here so what should I do"
println(spin(stri,5))
#= Note that return is an optional thing to do
That said, the function will still return a value 
This value is the one that was last calculated
=#
