# Sorting 

dishes = ["steak", " apple pie", "vagetable soup"]

# When using comparison operators on strings, the operator will look at the first letter of each word and compare their place in the alphabet 

# Example
# "zoo" > "apple" will return true 

# .sort method 

# iterate over the array and compare each item. this method yields to a block with two elements. thats block is the comparator, so it should compare the two elements and return 0 if they ar the same, -1 if the first is less than the second, and 1 if the first is greater than the second

# Example

array = [7, 3, 1, 2, 6, 5]

array.sort do |a, b|
  if a = b 
    0 
  elsif a < b 
    -1
  elsif a > b 
    1 
  end
end 

# The Spaceship Operator <=>

array = [7, 3, 1, 2, 6, 5]

array.sort do |a, b|
  a <=> b 
  p array
end



