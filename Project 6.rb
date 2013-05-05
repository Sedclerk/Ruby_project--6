puts "Project 6"
puts "======================== ---- First-- Question ----===========================\n"
puts "1.Convert a String from uppercase to lowercase:"

# First, Ruby has a few methods for changing the
# case f strings , ok so for converting uppercase,
# we use "upcase" and for lowercase , we use "downcase"
# so lets demonstrate:
# 
# Let's open up IRB using --simple-prompt

# C:\Users\Sedinirina>irb --simple-prompt
puts string = "Hello Sedy" # this is a normal string
# => "Hello Sedy"
puts string.upcase # In here, we are converting the normal string to uppercase before we will be converting it to lowercase
# => "HELLO SEDY"
puts string.downcase # This is what we were looking for " converting uppercase to lowercase "
# => "hello sedy"
# >>

puts "======================== ---- Next-- Question ----=============================="
puts " 2. How are these different? "
puts "a = 'Bob'"
puts  "b = String.new('Bob')"
  
  
# So in the first case "a", we're initializing the reference "a" to that String object.

# In the second case,we're creating a new String object, passing in a
# reference to the original String object as a constructor parameter. In
# other words, we're creating a copy. The reference "b" is then initialized
# to refer to that copy.
  
# When you use a string literal the string can be interned but when you use String.new("...")
# you get a new string object. String objects for literals are already created in
# the compile time, which is far before you redefine the initialize method.
# The individual string objects from literals are just copy of the already allocated
# and initialized objects. The whole purpose of the initialize
# method is to initialize newly created objects, as the name suggests.

 
puts "======================== ---- Third-- Question ----=============================="
puts "3. Replace all the 'a' in this sentence with 'x's"
puts " 'Mary had a little lamb' i.e. 'Mxry hxd x little lxmb' "

# Microsoft Windows [Version 6.2.9200]
# (c) 2012 Microsoft Corporation. All rights reserved.

# C:\Users\Sedinirina>irb --simple-prompt
puts str = "Mary had a little lamb"
# => "Mary had a little lamb"
puts str.gsub("a", "x")
# => "Mxry hxd x little lxmb"
# >>

puts "======================== ---- Fourth-- Question ----=============================="
puts " 4. Convert a String to an Array of Characters "
#    i.e. “Bob” [‘B’,’o’,’b’]
   
   
# C:\Users\Sedinirina>irb --simple-prompt
puts cool = "Steve"
# => "Steve"
puts cool.split("")
# => ["S", "t", "e", "v", "e"]
# >>

puts "======================== ---- Fifth-- Question ----=============================="
puts " 5. How is 'gsub' different from 'gsub!'? "

# While using we don't see a much difference bbetween both ,they are doing the same thing,
# though both the gsub and gsub! performs the same functionality.

# The difference between gsub and gsub! string methods are:

# When we use gsub , it returns a copy of string based upon our
# requirement.it will not disturb the original string but after
# performing the operation it will returns the copy of the string. 
# Where as , in the case of gsub! the original string will be modified. 
# let s take the example above:

# C:\Users\Sedinirina>irb --simple-prompt
puts str = "Mary had a little lamb"
# => "Mary had a little lamb"
puts str.gsub("a", "x")
# => "Mxry hxd x little lxmb"
# >>
# Here the original string hello will not be modified , but it will returns the string with the desired output. 
# where as 

# C:\Users\Sedinirina>irb --simple-prompt
puts str = "Mary had a little lamb"
# => "Mary had a little lamb"
puts str.gsub!("a", "x")
# => "Mxry hxd x little lxmb"
# >>

# even though it returns the same output as above it will MODIFY the original string.

puts "======================== ---- The --Last-- Question ----=============================="
puts "6.How is 'bob' different from :bob?"



# Difference between String and Symbol is that a String has a lot
# more methods on it for string manipulation, while a Symbol is a
# relatively object.

# Here is a good example for the differenceis

# Symbol refers to the same memory location where string
# generates a new id every time for eg.

puts "STRING"


# C:\Users\Sedinirina>irb --simple-prompt
puts "bob".object_id
# => 19066752
puts "bob".object_id
# => 19808808
puts "bob".object_id
# => 20412984
puts "bob".object_id
# => 20624628
# >>

puts "SYMBOL"

# C:\Users\Sedinirina>irb --simple-prompt
puts :bob.object_id
# => 383780
puts :bob.object_id
# => 383780
puts :bob.object_id
# => 383780
puts :bob.object_id
# => 383780
# >>


# A symbol (like :bob ) is something you use to represent names and strings.
# You would want to use a symbol when you may have need to use a
# string several times as this far easier and more productive.

# Symbol objects are created on-demand behind the scenes for new
# unique string values. Once a symbol exists for a particular string
# value, it will continue to be used for that value rather than creating
# more symbols for it.

# If you have a modest number of unique string values that you want
# to use over and over, and will mostly be using them as-is (i.e.
# not concatenating them, uppercasing them, etc….), then symbols are
# the right tool for you.
# Otherwise, stick with strings. Strings are not that much slower than
# symbols, and many times the extra limitations of symbols aren’t worth it.

puts "Thank you Steve"