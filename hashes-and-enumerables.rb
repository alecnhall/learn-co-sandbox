# Hashes and Enumerables

# We do not us .map with a hash but rather .reduce, passing a reduce a new hash to populate as its argument. Inside reduces block we'll add to that new-hash argument (the first block parameter, traditionally called memo), returning the memo at the end of each block.

# It is helpful to work with the has before starting reduce. Each and each_pair methods can help get a handle on the situation 

bands = 
{ joy_divison: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %[debbie chris clem jimmy nigel],
  talking_heads: %[david tina chris jerry] 
}

# using each_pair is more expressive than using just each 

bands.each_pair{ |pair| p pair }

bands.reduce({ }) do |memo, pair|
  p memo
  p pair 
  memo
end