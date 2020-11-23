["This", "is", "a", "test"].join(' ') #=> "This is a test"
["This", "is", "a", "test"].join('_') #=> "This_is_a_test"
["This", "is", "a", "test"].join('*') #=> "This*is*a*test"

# Array literal - %w will create an array
p %w[this is also a test]
# different methods joined together
p %w[this is also a test].join(' ').capitalize

# split a string into an array
p "When in the course of human events".split(" ")