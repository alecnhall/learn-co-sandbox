# Abstacting array output 
counter = 0 
pets = ["Dog", "Cat", "Fish", "Bird", "Hamster"]

while pets[counter] do 
  puts pets[counter]
  counter +=1 
end

def array_counter(array)
  counter = 0 
  while array[counter] do 
    puts array[counter]
    counter += 1 
  end
end

array_counter(pets)

array_counter(["hello","how are you","bye"])

# Looping using .length 

seasons = ["Spring", "Summer", "Fall", "Winter"]

seasons.length

def length_array_counter(array)
  counter = 0 
  while counter < array.length do 
    puts array[counter]
    counter =+ 1 
  end
end

length_array_counter(seasons)