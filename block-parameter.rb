# .times
number = 5
number.times do 
  puts "I print out #{number} times"
end

# do...while loop
counter = 0 
array = [1, 2, 3, 4, 5]

while array[counter] do 
  puts array[counter]
  counter += 1 
end

# Ruby Code Blocks - a code block is way of grouping statements together - we have used the with do...end and while loops
# Blocks can receive parameters, the are surrounded by | | referred to as pipes 

5.times do |index|
  puts index
end

array = [1, 2, 3, 4, 5]
length = array.length

# length.times do |index|
  # puts array[index]
# end

array.length.times { |index|
  puts array[index]
}

# Eliminated the need for a counter by using block parameters
