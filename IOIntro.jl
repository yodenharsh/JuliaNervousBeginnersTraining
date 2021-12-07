#connection refers to the file
#syntax is <fh> = open(<fileName>, <read/write mode>)
#<fh> is a connection. It is only points to the file 
fh = open("ExampleFile.txt")
#to close the file, use close(<connectionName>)
#Use read to read stuff. syntax is read(<connectionName>),<Data type to read>)
#You can assign a variable to read. <identifier> = read(.....
#IOStream doesn't let you read the data type Any for whatever reason 
println(read(fh, String))
close(fh); fh = open("ExampleFile.txt") #idk how to move the pointer yet so I am just closing and reopening 
#Using split to split the file based on some delimiters 
reading = read(fh,String)
NewReading = split(reading, '\n') 
println(NewReading)
close(fh); fh = open("ExampleFile.txt")
ExampleRead = readlines(fh) #read lines by line
println(ExampleRead)
println(filter!(x->!(x==""),ExampleRead))
close(fh)
f = open("ExampleFile.txt", "a") #a means writing to an existing file
write(f, "\nThis is something I am adding to it")
println(read(f,String))
close(f)
#Use "w" in open for erasing everything in the file intended and just add what we write 