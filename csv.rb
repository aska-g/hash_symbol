require "csv"
CSV.foreach("cities.csv") do |row|
  puts "#{row[0]} is in #{row[2]} and it's worth to see #{row[1]} when you're there"
end
