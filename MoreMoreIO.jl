fh = open("ExampleFile3.txt")
readl = readlines(fh)
allWords = split(join(readl, ' '), ' ')#storing all words in an arrat
println(allWords)
newWords = String["" for i in 1:100]
println(newWords)
println(length(newWords))
println("Replacing 'is' with 'gay'")
for i in 1:length(allWords)
    if allWords[i] == "is"
        global newWords[i] = "gay"
    else
        global newWords[i] = allWords[i]
    end 
end
println(join(newWords, ' ')) #Printing newWords as a string
