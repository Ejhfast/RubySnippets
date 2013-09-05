# 1.
#
# Title: conditionally enforce encoding 
# Category: [ Data or Control Flow ]
# 
# Description: 
# Forces the 'str0' encoding on 'var0' and returns 'var0', if 'var0' responds to :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulatedo in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ] 

if var0.respond_to?(:sym0)
  var0.force_encoding("str0")
end

# 2.
#
# Title: Execute a given block
# Category: [ Data or Control Flow ]
# 
# Description: 
# If a block is supplied to the current context, it is executed. 
# 'block_given?' checks whether a block has been provided, and 'yield' exectues it
# This snippet is a faster way of executing a passed code-block; the alternative is to create a proc object from the block and pass it as a normal parameter.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulatedo in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if block_given?
  yield
end

# 3.
#
# Title: Set hash/array element during object initialization
# Category: [ External lib ]
# 
# Description: Sets the element var1 of the hash/array 'var0' to an empty hash during object initialization. The code for this is being passed as a block to the 'new' method. The object's 'initialize' method must be able to 'yield' the passed block.  
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

new do |var0, var1|
  var0[var1] = {}
end

# 4.
#
# Title: Execute a given method name in the context of the current object 
# Category: [ Other ]
# 
# Description: 
# When 'var0' is not nil, a method with the name same as the value of 'var0' is executed on 'var1'. The value contained in 'var0' should be a symbol or an object that responds to to_proc, as '&var0' here converts 'var0' to a proc object, and passes that proc object to instance_eval.
# 
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => var1.send(var0) if var0

if var0
  var1.instance_eval(&var0)
end

# 5.
#
# Title: Open a IO object and write to it
# Category: [ Standard lib ]
# 
# Description: 
# This opens the an IO object 'var0' (file, pipe, socket etc) with the mode 'str0' and writes var2 to it. The mode 'str0' should be available on the IO object.
#
# Useful programming task or idiom: [ Yes  ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

open(var0, "str0") do |var1|
  var1.write(var2)
end

# 6.
#
# Title: Adds elements of a list at its own end
# Category: [ Other ]
# 
# Description:
# This snippet iterates over the current list, and in each iteration it adds the iterated element at the end. This keeps increasing the length of the list dynamically and runs into an infinte loop. 
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

each do |var1|
  self << var1
end

# 7.
#
# Title: Insert a value to the beginning of an enumerable
# Category: [  Data or Control Flow ]
# 
# Description: 
# This checks if the enumerable 'var0' contains the value var1, and if it doesn't, the var1 is inserted at the beginning. The given array is modified.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [  No ]

unless var0.include?(var1)
  var0.unshift(var1)
end

# 8.
# No idea # TODO

map do |var1|
  "str0".%(var1)
end

# 9.
#
# Title: Fetch the last element from a list if it is a Hash
# Category: [ Data or Control Flow ]
# 
# Description:
# Checks for the type of the last element in the list 'var0', pops and returns it. While pop-ing, the last element is removed from 'var0'. If the last element is not a hash, it is not pop-ed and an empty hash is returned 
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.last.is_a?(Hash)
  var0.pop
else
  {}
end

# 10.
#
# Title: Conditionally close an IO object 
# Category: [ Data or Control Flow ]
# 
# Description: 
# Calls close a close-able object 'var0' (can be IO, ARGF, DIR objects) if it responds to :sym0.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.respond_to?(:sym0)
  var0.close
end

# 11.
#
# Title: Prefix elements of a list with 'str0'
# Category: [ Data or Control Flow ]
# 
# Description: 
# Prefixes each element of a list with 'str0', and returns the new list. Doesn't modify the given list. If the elements are not strings, their string version is used (to_s is called)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

map do |var1|
  "str0#{var1}"
end

# 12.
#
# Title: Prefix all occurances of 'str0' with 'str1' in given text  
# Category: [ Data or Control Flow ]
# 
# Description: 
# Substitues all the occurances of the pattern /str0/ in the given text with a string that contains 'str1' concatenated with the pattern. This effectively prefixes all occurances of the pattern 'str0' with 'str1'. It returns the transformed text and does not modify the given text 
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => str.gsub(/str0/, 'str1str0')

gsub(/str0/) do |var1|
  "str1#{var1}"
end

# 13.
#
# Title: Gives an empty array if the given value is empty 
# Category: [ Data or Control Flow ]
# 
# Description: 
# This Returns an empty array if the 'var0' is empty. Checks for empty-ness by invoking empty? method on 'var0', so 'var0' should be able respond to it.   
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => IO.read(var0)

if var0.empty?
  return([])
end

# 14.
#
# Title: Iterate over a hash like object and set values
# Category: [ Other ]
# 
# Description: 
# Iterates over the current object using var1 and var2 as iterators, and set the key/index var1 to var2. 
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

each do |var1, var2|
  self[var1] = var2
end

# 15.
#
# Title: insert at the beginning of a list
# Category: [ Data or Control Flow ]
# 
# Description: 
# Inserts 'var0' at the beginning of the given list var1. Does not insert if 'var0' is nil. Modifies the given array var1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0
  var1.unshift(var0)
end

# 16.
#
# Title: Read contents of an IO stream
# Category: [ Standard lib / Data or Control Flow ]
# 
# Description: 
# Opens a given IO stream 'var0' (file, pipe, socket), using the mode 'str0' and then reads all the data in it. Returns the data read. The IO stream should be able to handle the mode 'str0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => IO.read(var0)

open(var0, "str0") do |var1|
  var1.read
end

# 17.
#
# Title: Add new element to the end of a list
# Category: [ Data or Control Flow / Other ]
# 
# Description:
# Adds var1 to the end of the list 'var0', if 'var0' does't already exist in var1. The list 'var0' is modified and returned. Returns nil if 'var0' already exists.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]

unless var0.include?(var1)
  var0 << var1
end

# 18.
#
# Title: Return the value only if recognizable by ruby
# Category: [ Data or Control Flow ]
# 
# Description: 
# Checks if the given 'var0' is defined? and returns its value. Anything recognizable by ruby is considered defined?, this includes expressions, literals, local vaiables, function names. A local vaiable not initialized by this point is considered NOT defined. A variable set to nil is considered defined, and so is nil itself. 
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if defined?(var0)
  return(var0)
end

# 19.
#
# Title: Invoke a proc or method with self
# Category: [ Data or Control Flow ]
# 
# Description: 
# Invokes the method/proc 'var0' using 'call' and passing the current object (self) as a parameter. If 'var0' is not a proc or method, it should repond to the call method. And var0 should not be nil.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0
  var0.call(self)
end

# 20.
#
# Title: create a proc object
# Category: [ Data or Control Flow ]
# 
# Description: 
# Create a Proc obect using the given block. On being invoked, it gives the value of the arguement passed
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

lambda do |var0|
  var0
end

# 21.
#
# Title: Creating custom Enumerator 
# Category: [ Other ]
# 
# Description: 
# Creates and returns an enumerator based off :sym0 method defined in the current context. The resulting enumerator will iterate by using the :sym0 method, and will pass the 'var0' as argument to :sym0 each time. No enumerator is created if a block is given.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes]
# There's a more common way to write the code snippet: [ Yes ]
# => return to_enum(:sym0, var0)  unless block_given?

unless block_given?
  return(enum_for(:sym0, var0))
end

# 22.
#
# Title: Sorting with custom comparator
# Category: [ Data or Control Flow ]
# 
# Description: 
# Invokes sort with a block to decide the greater/lesser between two values. Converts the values to string and compares the stings. Uses the spaceship operator (<=>) which returns 1, 0 or -1 depending on the first operand being greater, equal or lesser then the second.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

sort do |var1, var2|
  var1.to_s <=> var2.to_s
end

# 23.
#
# Title: Sleep for a given times
# Category: [ Other ]
# 
# Description: 
# Suspends the execution of the current thread for the given 'var0' time, in seconds. If 'var0' is 0, it doesn't try to suspend.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0 > 0
  sleep(var0)
end

# 24.
#
# Title: Jump iteration conditionally
# Category: [ Data or Control Flow ]
# 
# Description: 
# Skips the rest of the code in the current iteration and jumps to the next one if 'var0' matches th pattern /str0/ (regex match). When within a block, it terminates the execution 
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

if var0 =~ /str0/
  next
end

# 25.
#
# Title: Sum of elements in a list
# Category: [ Data or Control Flow ]
# 
# Description: 
# Iterates through each element in the list and adds them using the + operator. The first argument of the block (var1) acts as the accumulator, while the second one (var2) holds the iterated element. The accumulator is assigned the return value of the block in each iteration. The accumulator is intialized to the first argument to inject, which is 0 here
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => inject(:+) 

inject(0) do |var1, var2|
  var1 + var2
end

# 26.
#
# Title: Duplicate each element in a list
# Category: [ Data or Control Flow ]
# 
# Description: 
# Duplicates each element in the list using the 'dup' method and returns the duplicated list. Does not modify the original list.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#  map(&:dup)

map do |var1|
  var1.dup
end

# 27.
#
# Title: define an instance method dynamically
# Category: [ Other ]
# 
# Description:
# This creates an instance method named :sym0 for the current object. This method returns the value of 'var0' when called.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

define_method(:sym0) do
  var0
end

# 28.
#
# Title: create an alias for a method
# Category: [ Standard lib / External lib / Data or Control Flow / Other ]
# 
# Description: 
# create an alias named :sym1 for the method :sym0, if it is defined in the current class/module (or anscestors)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

unless method_defined?(:sym0)
  alias_method(:sym0, :sym1)
end

# 29.
#
# Title: Invoke methods based on given keys 
# Category: [ Other ]
# 
# Description: 
# Invokes the method "#{var1}str0" (str0 suffixed to value of var1) for every key in the object (represented by var1). Uses the corresponding value for the key, var2, as the argument in the invocation. Methods are invoked on the current object, and it can be iterated on key-value pairs, like a Hash  
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

each do |var1, var2|
  send("#{var1}str0", var2)
end

# 30.
#
# Title: getting values of a list of constants
# Category: [ Other ]
# 
# Description: 
# Iterates over a list of constants, and determines the value set to each. Gets the value of the constant if it is defined in the current class/module or its anscestors. If the constant is not defined, it tries to get the value by calling 'const_missing'. (const_missing defines a general value to use when constant is not found.) 
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]
#
each do |var1|
  var2 = if var2.const_defined?(var1)
    var2.const_get(var1)
  else
    var2.const_missing(var1)
  end
end
