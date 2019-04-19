require "json"
require 'open-uri'


puts "What's your github username?"
print '> '

username = gets.chomp

url = "https://api.github.com/users/#{username}"

json_string = open(url).read
parsed_hash = JSON.parse(json_string)

puts "You have #{parsed_hash["public_repos"]} public repositories"
