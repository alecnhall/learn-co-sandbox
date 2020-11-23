toppings = ["pickles", "mushrooms", "bacon"]

def hamburger(array)
  array.each { |toppings| puts "I love #{toppings} on my burgers!" }
end

hamburger(toppings)