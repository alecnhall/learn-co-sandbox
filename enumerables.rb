# map to transform an Array

[10,20,30,40].map{|n| n * 2} #=> [20, 40, 60, 80]

# use reduce to reduce an array to a value 

[10,20,30,40].reduce(0){ |total, num| total + num} #=> 100
[10,20,30,40].reduce(100){ |total, num| total + num } #=> 200

# Select/Reject

[10,20,30,40].select{ |num| num > 25} #=> [30, 40]

[10,20,30,40].reject{ |num| num > 25} #=> [10,20]

# Maps a collection 
# Only accumulate elements that a truthy expression in the block for select. ruby also lets you do this work by calling the method filter, which operates the same way
# Only accumulate the elements that don't make a truthy expression in the block for reject

# List of enumerables 
# all? - everything "tested" by the block returns truthy
# any? - did anything "tested" by the block returns truthy
# collect - a synonym for map 
# count - which elements satisfy the block or, without block, how many elements are there 
# detect - which elements satisfies the block first. does the same thing as find 
# find_all - which elements satisfy the block 
# find_index - what's the index of the first element to satisfy the block 
# max - what's the highest value?
# max_by - what's the highest value based on some property of the element 
# min - what's the lowest value
# sort - puts the values in order

# Didnt save section on each :(

# Hashes and enumerables 

# With a hash, we will not use map. Instead we'll use reduce, passing reduce a new hash to populate as its argument. Inside reduce's block, we'll add to that new-hash argument 
