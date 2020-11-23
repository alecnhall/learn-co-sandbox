# Literal Constructor
# my_array = []

# The Class Constructor
# my_array = Array.new 

puppies = ["bulldog", "terrier", "poodle"]

random_numbers = [ 2, 5, 6, 8, 30050]

mixed = ["this", "array", 7, 20, "has", 45, "integers", "&", "strings", 309]

# Best practice is to keep your arrays with one kind of element 

# Shovel Method 
famous_cats = ["lil' bub", "grumpy cat", "Maru"]

famous_cats << "nala cat"

p famous_cats

# Push Method - adds element to the end of the array
famous_cats = ["lil' bub", "grumpy cat", "Maru"]

famous_cats.push("nala cat")

p famous_cats

# unshift Method - adds element to the front of an array
famous_cats = ["lil' bub", "grumpy cat", "Maru"]

famous_cats.unshift("nala cat")

p famous_cats

# pop Method - remove the last item from the end of an array
famous_cats = ["lil' bub", "grumpy cat", "Maru"]
maru_cat = famous_cats.pop

p famous_cats
p maru_cat

# shift Method - removes item from the front of an array 
famous_cats = ["lil' bub", "grumpy cat", "Maru"]
lil_bub = famous_cats.shift

p famous_cats
p lil_bub

# Retrieve Items from array
famous_cats = ["Cheshire Cat", "Puss in Boots", "Garfield"]

famous_cats[1] #=> "Puss in Boots"
famous_cats[0] #=> "Cheshire Cat"
famous_cats[2] #=> "Garfield"

# items in array can also be retrieved by using negative index number 
famous_cats = ["Cheshire Cat", "Puss in Boots", "Garfield"]

famous_cats[-1] #=> "Garfield"

# Identify elements based on index number
famous_cats = ["Cheshire Cat", "Puss in Boots", "Garfield"]

famous_cats.index("Puss in Boots")

# Update array element using index number
picnic_ingredients = ["wine", "jalapenos", "donkey feed"]

picnic_ingredients[2] = "belgian chocolate"# element at index 2 is nw belgian chocolate 
p picnic_ingredients


