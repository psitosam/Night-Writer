
file = File.open(ARGV[0], "r")
incoming_text = file.read.delete("\n") #take the things in this file and put them into string form, deleting the newline from the enter key.
file.close


writer = File.open(ARGV[1], "w")
writer.write(incoming_text)
puts "Created '#{ARGV[1]}' containing #{writer.size} characters"
writer.close
