# Hashes 
# Hashes allow us to store named, or associated data. Think of a dictionary or address book. This allows us to store more complex collections of information than arrays

# Hash Structure and Usage
# Hashes are structured with keys and values. Each kay/value pair makes up one unit in the hash.

hash = { "key" => "value", "another_key" => "another value" }

# Example: Named data

the_rock = {"name" => "Dwayne, The Rock, Johnson", "weight" => "a lot"}

# Hash and Key Uniqueness 
# A key in a hash can be a string, symbol, or an integer as long as you only use each key once. We do this because to access data in a hash we reference the key of the value we want to retrieve.
# If you duplicate a key it overwrites the first key value pair
# Hashes are for storing named or associative data. Each key/value pair describes a unique attribute or unit of information. The data structure we are creating should mirror the real world entity we are trying to describe. Making our hashes unique reflects that.

# Example: Specific Data

the_rock = { "name"=> "Dwayne Johnson", "nickname" => "The Rock", "weight" => "a lot" }

# Counting Data 
# When using arrays for sets of data and having multiple elements that are the same an array can get messy. Instead using a hash you can keep a count of each item.

old_fashioned_things = { 
  "whale bone corset" => 5,
  "porcelain vase" => 2,
  "oil painting" => 3
}

first_printing = {
  "Moby Dick" => 1000
}

# Creating Hashes 
# The Literal Constructor

my_hash = {} #=> returns an empty hash

# Retrieving Data from Hashes
# To retrieve data from a hash we reference the name of the key [key]

pets = {"cat" => "Maru", "dog" => "Pluto"}
pets["cat"] #=> "Maru"

# Adding Keys and Values to Hashes

person = {
  "name" => "Corinna",
  "age" => 36
}

# To add to a key and value to the hash we use a similar method to retirveing but instead set a new key inside the brackey and set it equal to a new value 

person["hometown"] = "Massena, NY"

# Nested Hashes

jon_snow = {
  name: "Jon",
  email: "jon_snow@thewall.we"
}
