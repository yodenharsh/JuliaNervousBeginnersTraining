str = "What the fuck is this"
println(str)
str = "What the $("Fucking") fuck is this"
println(str)
insert = "lol"
str = "what the $(insert) fuck is this"
println(str)
insert = "weed"
str = "what the $(insert) fuck is this"
println(str)
println("Using join function now")
joined = join([str, "crack", "fuck"], ", ", " and ")
println(joined)
