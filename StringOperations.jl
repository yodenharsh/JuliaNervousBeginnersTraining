str = "lmao what is this weird fuck doing"
println("printing the 4th value: ", str[4])
println("Printing from 'm' to 't' : ",str[2:9])
givenRange = 4:6
println("Printing from 4th to 6th letter : ",str[givenRange])
println("Printing from second character to last character with gaps of 3 : ", str[1:3:end])
println("printing in reverse order? : ",str[end:-1:1])
str_array = [char for char in str]
println(str_array) 
ConcatString = string(str, " attaching stuff and a number:", 8 )
println(ConcatString)
println("Now for an example with base, padding and stuff")
ConcatString = string( 100, base = 10, pad = 5)
println(ConcatString)
println("The above was all using the \"string\" function. Now to use the join function which lets us ")
println("Printing the length of str : ",length(str))