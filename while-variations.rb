# runs through code 3 times
# n = 2 
# count = 0 
# while count <= n do 
  # puts "I ran."
  # count += 1  
# end

# times/easier way of doing above code
# 3.times do 
  # puts "I ran."
# end

# breaking from an infinite loop
# count = 0 
# n = 3
# while true do 
  # break if count >= n 
  # puts "I ran."
  # count += 1 
# end

# until will execute code until something is true
counter = 0 
until counter == 20
  puts "The current number is less than 20."
  counter += 1 
end