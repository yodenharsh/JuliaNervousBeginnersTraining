#=OK, this program is to show how to find methods and what they do 
Also, double is just an identifier method and not an inbuilt method
Int64 types only accept int inputs and same for others
Just use "Number" tbh
Or just not select a data type (the ":: (data type)") 696969696969696969699699watchpornbitch - courtesy of Maatrika P.  
=#
double(x::Int64) = 2x
println(methods(double));
double(x::Float64)=2x
double(x::Number) = 2x   
double(x)= 2x
println(double(696999996969696969696.0))
double(x::String)=x^2
println("Number is a supertype of Float64 and Int64")
println(double("frick"))
println(methods(double))
println(double(10)) 
distype(x::Int64, y) = x * 45 + y
println(distype(4,5))
println("Supertype of signed is : ",supertype(Signed))
println("Subtypes of number are : ", subtypes(Real)) #subtype only works on terminal for whatever reason 