# while(condition expression) do
  # stuff to do
# end 

# loop will run forever
# while true do
  # puts "say this forever"
# end

# if a loop is truthy it will run forever...if it is falsey it will
# do the same

# count = 0 # data defined outside of the loop
while count < 3 do # a boolean expression using the bit of data
  puts "I am the #{count}, I love to count!"
  count += 1 # take the value of the count and increment it by one, then reassign it to count
end

magic_exit_number = 7 
count = 0
while count < 10 do 
  break if count == magic_exit_number
  puts "I am the ${count}, I love to count"
  count += 1 
end