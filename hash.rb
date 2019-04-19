# STORING RICH DATA IN ARRAYS

students = %w(sheila tom johnny max)
students_ages = [25, 24, 53]

students.each_with_index do |student, index|
  "#{student} is #{students_ages[index]}"
end

# HASH - CRUD

# CREATE
my_hash = {
  'key 1' => 'value 1',
  'key 2' => 'value 2',
}

# SYNTAX FOR ADD AND UPDATE IS THE SAME
my_hash['key 3'] = 'value 3'

# READ
my_hash['key 1']

# DELETE
my_hash.delete('key 2')


students_ages = {
  'sheila' => 25,
  'tom' => 24,
  'max' => 53
}


# EACH

students_ages.each do |student, age| # |k, v|
  "#{student} is #{age}"
end


# KEYS
students_ages.keys # => ['sheila', 'tom', 'max']

# VALUES
students_ages.values # [25, 24, 53]

# KEY?(key)
students_ages.key?('tom') # => TRUE
students_ages.key?('olivia') # => FALSE



# HASH AS THE LAST ARGUMENT OF A METHOD

# limited flexibility (you need to provide 2 or 3 arguments)
def tag(name, value, attr = nil)
   "<#{name} #{attr}>#{value}</#{name}>"
end

tag('h1', 'This is my header')
tag('h2', 'This is a subheader', "color = 'red'")


# you can provide as many attributes as you want
def tag(name, content, attrs = {})
  flat_attrs = attrs.map { |key, val| " #{key}='#{val}'" }.join
  return "<#{name}#{flat_attrs}>#{content}</#{name}>"
end

puts tag("h1", "Hello world", { class: "bold" })

puts tag("a", "Le Wagon")









