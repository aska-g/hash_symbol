data_types = %w[strings, integers, floats, arrays, boolean, range]

# ARRAY - CRUD

# create
students = ['student1', 'student2']
students << 'one more student'

# read
students[0]

# update
students[0] = 'another student'

# delete
students.delete_at(0)
