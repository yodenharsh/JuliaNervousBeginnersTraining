fh = open("ExampleFile2.txt")
readl = readlines(fh)
filter!(x->x!="", readl) #filtering all the empty files 
println(readl)
println("Printing the 5th line in the file (after filtering the empty lines) ",readl[5])
println("Reading each element in the 5th lines : ")
for x in readl[5]
    println(x)
end
close(fh)
fh = open("ExampleFile2.txt")
filter!(x->x!='.', readl)
println("Removing all the full stops in the file : ", readl)
println("Use \\quotedblleft and \\quotedblright for filtering out quotes")
println("Now we'll try to create a filtered Examplefile2 for whatever reason using looping and push!")
depunchlines = [] 
for line in readl
    newline = join(filter!(x->!(x =='.' || x==',' || x=='\\' || x=='"'),[x for x in line]))
    push!(depunchlines, newline)
end
println(depunchlines)
println("We can also use split(depunchlines[5],' ') and assign to a variable for extracting each word from line 10")
println("If we want to extract every word in depunchlines, we can use split(join(depunchlines, ' ')' ')")
println("Now printing depunchlines's 5th line as an array of words")
line5 = split(depunchlines[5], ' ') 
allWords = split(join(depunchlines, ' '), ' ')
println(line5)
println("\n Printing all occurences of \" \" in readl")
println(filter(x-> x=="to", allWords))
count = 0; numWords = length(allWords) #Printing number of occurences of "seiso txt"
for wordnumber in 1:numWords-1  #-1 to avoid outOfBounds error
    if(join(allWords[wordnumber:wordnumber+1], ' ') =="seiso txt")
        global count = count+1
    end 
end 
println("Number of seiso txt = ",count)
