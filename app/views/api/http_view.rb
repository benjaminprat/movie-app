require "http"

system "clear"
puts "Welcome to the Movie app!"
print "Enter a movie name name: "
input = gets.chomp

response = HTTP.get("localhost:3000/movies#{input}.json")

entries = response.parse["title"]

put entries
