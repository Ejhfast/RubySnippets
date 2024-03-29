
# 1.
#
# Title: Copy value at an index/key from one array/hash to another
# Category: [ Data or Control Flow ]
#
# Description:
# If an element exists at key 'var1' in the hash 'var0', it is copied to another hash var2 with the same key.
# If var0 and var2 are arrays, the element at index var1 is copied from var0 to var2.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0[var1]
  var2[var1] = var0[var1]
end

# 2.
#
# Title: Split and get the last part
# Category: [ Standard lib ]
#
# Description:
# Splits the string version of 'var0' at all occurances of 'str0' and return the last part.
# A common use case is getting file name from a full path by splitting it at "/"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s.split("str0").last

# 3.
#
# Title: Access a Hash elemeny by symbol or string key
# Category: [ Data or Control Flow ]
#
# Description:
# Gets the element at key :sym0 from the hash 'var0'. If the symbol key :sym0 is not present, it fetches the value at the string key "str0"
# Useful in cases where Hash access via both symbol and strings is needed: such that h[:a] and h['a'] can both get the value.
# For example, Http parameter hash in Rails uses this kind of access.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0[:sym0]) || (var0["str0"]))

# 4.
#
# Title: Iterate over the cookies hash
# Category: [ External lib ]
#
# Description:
# When 'var0' holds a 'cookies' hash, this will give an interator over the Hash.
# Typical use case is for reading cookies in a Http request object.
#
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.cookies.each

# 5.
#
# Title: Check if a variable equals the first element of a list
# Category: [ Standard lib ]
#
# Description:
# Check if the variable 'var0' is the same as the first element of the list 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => var0 = var1.first

var0 == var1[0]

# 6.
#
# Title: Get the value at :sym0 as integer
# Category: [ Standard lib ]
#
# Description:
# Reads the value at key :sym0 from the params has and convert it to an integer.
# Gives 0 when the value is absent.
# A usecase is in reading Http parameters related to pagination:
#  if the :page_no is not present, it means the user is at the first page,
#  which can be treated as :page_no 0 in pagination logic
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

params[:sym0].to_i

# 7.
#
# Title: Difference between the same property of two objects
# Category: [ Standard lib ]
#
# Description: TODO-recheck
# Gives the difference between the property 'x' of var0 and var1
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.x - var1.x

# 8.
#
# Title: Iterate over a list within a hash
# Category: [ Standard lib ]
#
# Description: TODO: usecase
# Returns an enumerator that can iterate over the array at "str0" in the hash 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => var0["str0"].map

var0["str0"].collect

# 9.
#
# Title: Configure action_controller to disable caching
# Category: [ External lib ]
#
# Description:
# Calls the 'perform_caching=' method on 'config.action_controller' object with 'false'.
# This will set a global configuration related to caching in action_controller to false
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config.action_controller.perform_caching=(false)

# 10.
#
# Title: Checks if the name of current object is same as the given object's name
# Category: [ Standard lib ]
#
# Description:
# Calls the name method on the current object (self) and compares if it is equal to the 'name' property of 'var0s'.
# This may be used to implement custom comparators on a class, somewhat like:
#
#  class A
#    attr_accessor :name
#    def ==(var0)
#      self.name == var0.name
#    end
#  end
#  a1=A.new; a1.name="a1"
#  a2=A.new; a2.name=="a2"
#  a1==a2
#
# Useful programming task or idiom: [ Yes/No ]
# Can be encapsulated in standalone function: [ Yes/No ]
# There's a more common way to write the code snippet: [ Yes/No ]

self.name == var0.name

# 11.
#
# Title: set the backtrace for exception object
# Category: [ Standard lib ]
#
# Description:
# Sets the backtrace of the exception object in the current context to backtrace of the the 'var0' exception object.
# This maybe a useful pattern for building custom exception objects by catching existing exceptions.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

set_backtrace(var0.backtrace)

# 12.
#
# Title: Concat the length of a variable to a string
# Category: [ Standard lib ]
#
# Description: TODO- usecase
# Gets the length of the variable 'var0', casts it to a string and adds it at the end of "str0"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => "str0#{var0.length}"

"str0" + var0.length.to_s

# 13.
#
# Title: Concatenate the reverse of a string/array to another
# Category: [ Standard lib ]
#
# Description: TODO- usecase
# Reverses 'var1' and adds it to the end of 'var0'
#
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => var0 << var1.reverse

var0.concat(var1.reverse)

# 14.
#
# Title: Set an element of a Hash
# Category: [ Standard lib  ]
#
# Description:
# Sets the element at key 'var1' in the hash 'var0' to 'var2'.
# Converts var1 to a symbol first, to take make it efficient
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1.to_sym] = var2

# 15.
#
# Title: Sets the position_column of current object to the a position
# Category: [ External lib]
#
# Description:
# Sets the position_column property of the current object (which is a kind of Hash),
#  to the bottom_position_in_list, offset by a number
# Useful pattern for adding list-like behaviour to an existing (hash-like) object,
#  where this step moves the current object to a particular position from bottom.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

self[position_column] = bottom_position_in_list.to_i + 0

# 16.
#
# Title: Set the content-type
# Category: [ External lib ]
#
# Description:
# Set the 'content_type' property of 'var0' to the value at "str0" in the Hash 'var1'
# May be used in a web framework to set the content-type HTTP header for the response.
#
# Useful programming task or idiom: [ Yes/No ]
# Can be encapsulated in standalone function: [ Yes/No ]
# There's a more common way to write the code snippet: [ Yes/No ]

var0.content_type=(var1["str0"])

# 17.
#
# Title: Split a string and iterate over its parts
# Category: [ Standard lib ]
#
# Description: TODO: use of returning an iterator
# Splits the 'var0' at white-spaces,
# and returns an iterator which can be used to iterate over the parts
#
# Useful programming task or idiom: [ Yes/No ]
# Can be encapsulated in standalone function: [ Yes/No ]
# There's a more common way to write the code snippet: [ Yes/No ]

var0.split.each

# 18.
#
# Title: Check if the given variable is of the same type as the current object
# Category: [ Standard lib ]
#
# Description:
# Compares the 'class' of 'var0' with the class of the current object,
# and tells if they are the same.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes/No ]
# There's a more common way to write the code snippet: [ Yes/No ]

var0.class == self.class

# 19.
#
# Title: update multiple database records in a single step
# Category: [ External lib ]
#
# Description:
# Runs the 'update_all' method on the class represented by 'acts_as_list_class',
#  to update all the records filtered by 'scope_conditions',
#  by setting the 'position_column' to a new value determined by str0 and str1.
# For example, this could be something like:
#  User.update_all("#{position_column}=#{position_column}+1", "where priority like 'high'")
#
# This pattern is useful where many records of a model need to be updated
#  without performing active-record validations or callbacks.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

acts_as_list_class.update_all("#{position_column}str0#{position_column}str1", "#{scope_condition}")

# 20.
#
# Title: define a method that should be overloaded/redefined and never invoked directly
# Category: [ Standard lib ]
#
# Description:
# Defines a method 'method' that raises the 'NotImplementedError' exception.
# The exception is raised with the error message "str0".
# This pattern may be useful when there is a class that is to be
#  inherited and has a method to be implemented by the clild class only,
#  and does not make sense as a part of the parent class.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

def method
  raise(NotImplementedError.new("str0"))
end

# 21.
#
# Title: Set a value in a nested hash
# Category: [ Standard lib ]
#
# Description: TODO- usecase
# Sets the value 'var2' for the key 'var1' whithin the hash nested in 'var0'.
# The nested hash is located with the key "str0"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0["str0"][var1] = var2

# 22.
#
# [unsure][not sure about the **vr0]
#
# Title:
# Category: [ Standard lib / External lib / Data or Control Flow / Other ]
#
# Description:
#
# Useful programming task or idiom: [ Yes/No ]
# Can be encapsulated in standalone function: [ Yes/No ]
# There's a more common way to write the code snippet: [ Yes/No ]

var0.collect do |var1, **vr0|
  var1
end.uniq

# 23.
#
# Title: Assign local variables from argument hash
# Category: [ Standard lib ]
#
# Description:
# The method 'method' is being passed the argument 'var0',
#  which is a hash, and may contiain values keyed by :sym0 and :sym1.
#  The values are read and assigned to local variables 'var1' and 'var2'
#
# This pattern is useful in for passing variable number of arguments to a method,
# and allows a more readable method-invokation style:
#  method(:sym1 => 1, :sym2 => 2)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method(var0)
  var1 = var0[:sym0]
  var2 = var0[:sym1]
end

# 24.
#
# Title: Append a name to list/string
# Category: [ Standard lib ]
#
# Description:
# Adds the 'name' property of 'var1' to the end of 'var0'.
# Concats when 'var0' is a string, pushes when it is an array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << var1.name

# 25.
#
# Title: Gives the class-name of a variable
# Category: [ Standard lib ]
#
# Description:
# Gets the class-name of 'var0' and casts it to a string
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.class.to_s

# 26.
#
# Title: Chooses between str0 and str1 based on the presence of :sym0 in options
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if the options hash contains :sym0, and gives "str0" if it does,
# gives "str1" otherwise
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if options[:sym0]
  "str0"
else
  "str1"
end

# 27.
#
# Title: Iterate over constants available in the module
# Category: [ Standard lib ]
#
# Description:
# Gets a list of available constants in module 'var0' and returns an iterator to it
# Includes the constants that come from included modules.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.constants.each

# 28.
#
# Title: finds a user object based on given params
# Category: [ External lib ]
#
# Description:
# Search for the User object whose id (or some predefined property) equals the value params[:sym0]
# Used commonly in Rails for locating ActiveRecord objects
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

User.find(params[:sym0])

# 29.
#
# Title: Compare an array value with a string
# Category: [ Standard lib ]
#
# Description:
# Compares inequality for the value at index 0 of the array 'var0' with string "str0"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0] != "str0"

# 30.
#
# Title: Join elements of a non-empty array in to a string
# Category: [ Data or Control Flow ]
#
# Description:
# Concatenates elements of the array 'var0' with "str0" as the separator,
#  and gives the joined string. Gives nil if the array is empty
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.empty?
  nil
else
  var0.join("str0")
end

# 31.
#
# Title: Remove duplicates and sort the array
# Category: [ Standard lib ]
#
# Description:
# Removes duplicates from the array 'var0' using 'uniq',
#  and then sorts it. Assigns the sorted array back to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
# => var0.uniq.sort!

var0 = var0.uniq.sort

# 32.
#
# Title: Get the value at :sym0 from options hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value at key :sym0 from the 'options' hash, and assigns it to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = options[:sym0]

# 33.
#
# Title: Difference between variable size and 0
# Category: [ Standard lib ]
#
# Description: TODO- recheck
# This gives the negative of the difference between the size of var0 and a number.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

0 - var0.size

# 34.
#
# Title: Generate path for a file name
# Category: [ Standard lib ]
#
# Description:
# Gets the directory name of "str0" by calling File.dirname,
#  and joins it with "str1" to generate the full path for "str1".
#  The full path is then assigned to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = File.join(File.dirname("str0"), "str1")

# 35.
#
# Title: Raise exception if pattern doesn't match
# Category: [ Data or Control Flow ]
#
# Description:
# Matches the 'var0' with the pattern /str0/, and raises the EOFError
#  with message "str1"
# A usecase is in implementation of an IO stream interface,
#  where this may used to mark the end of the steam
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

unless var0 =~ /str0/
  raise(EOFError, "str1")
end

# 36.
#
# Title: Check if a variable is an instance of the current class
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' has the same class as the current object (self).
#
# May be used to be sure of the class name of an argument pased to a method
#  that expects the argument to be of its own type.
#  For example, while overloading operators like == or + or -
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.is_a?(self.class)

# 37.
#
# Title: Configuration to filter out the mentioned parameters
# Category: [ External lib ]
#
# Description:
# In Rails, this adds :sym0 to the list of paramters to be filtered
#  Now the parameter :sym0 will not be shown in logs
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config.filter_parameters += [:sym0]

# 38.
#
# Title: Clear the contents of the string/array/hash
# Category: [ Standard lib ]
#
# Description: 
# Clears the contents of 'var0' and 'var1'
# It becomes an empty string "" if it was a string
# It becomes an empty array [] if it was an array
# It becomes an empty hash {} if it was a hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.clear
var1.clear

# 39.
#
# Title: Checks if an array/hash contains the given element.
# Category: [ Standard lib ]
#
# Description:
# Checks if the array 'var0' contains the element 'var1', and returns false if it does
#  When 'var0' is a hash, it looks for the key 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.include?(var1)

# 40.
#
# Title: Set the i18n fallbacks config to true
# Category: [ External lib ]
#
# Description:
# Calls the 'fallback=' method on 'i18n' config with the paramter true
#  to set the configuration related to i18n (internationalization) to true
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config.i18n.fallbacks=(true)

# 41.
#
# Title: Create a migration template
# Category: [ External lib ]
#
# Description:
# Create a migration template using "str0" as the source and "str1" as destination.
#  Will create a database-migration file at the destination using the source file.
#  The template generation happens within a manifest intantiated using record method.
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

record do |var0|
  var0.migration_template("str0", "str1")
end

# 42.
#
# Title: pop the last element from a list if its a hash
# Category: [ Data or Control Flow ]
#
# Description:
# Pops the last element from the list 'var0' if it is a Hash
# Gives an empty hash if the last element is not a Hash
#
# This is generally used to fetch the options hash from a list of arguments.
#
# Useful programming task or idiom: [ Yes/No ]
# Can be encapsulated in standalone function: [ Yes/No ]
# There's a more common way to write the code snippet: [ Yes/No ]

if Hash === var0.last
  var0.pop
else
  {}
end

# 43.
#
# Title: Adding prefix and suffix
# Category: [ Standard lib ]
#
# Description:
# Adds "str0" to the beginning and "str1" to the end of 'var1'.
#  Converts var1 to a string first.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => "str0#{var1}str1"

var0 = ("str0" + var1.to_s) + "str1"

# 44.
#
# Title: Print human readable representation of an object
# Category: [ Standard lib ]
#
# Description:
# Gets the human readble representation of 'var1' using 'inspect',
#  and prints it to the file (handler) 'var0'
#
# Generally useful when inspect has been redefined for an object for custom representation
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.puts(var1.inspect)

# 45.
#
# Title: Difference of a variable's integer representation and a number
# Category: [ Standard lib ]
#
# Description: TODO- rechek
# Gets the difference by type-casting 'var0' to integer and then taking the difference.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_i - 0

# 46.
#
# Title: Check if a variable is greater than the other
# Category: [ Standard lib ]
#
# Description:
# Checks if the difference between 'var0' and 'var1' is greater than 0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0 > var1

(var0 - var1) > 0

# 47.
#
# Title: List all files in a sub-directory of var0
# Category: [ Standard lib ]
#
# Description:
# Obtains the directory path by joining 'var0' with 'str0' and 'str1',
#  and lists all files in it using Dir[]
#
# Useful when part of the directory structure is known,
#  like listing models in a Rails project as so -
#  Dir[File.join(Rails.root, "app", "models")]
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Dir[File.join(var0, "str0", "str1")]

# 48.
#
# Title: Write a list to file
# Category: [ Standard lib ]
#
# Description:
# Joins the list 'var1' using "str0" as separator, and writes to file 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.write(var1.join("str0"))

# 49.
#
# Title: Map over hash keys
# Category: [ Standard lib ]
#
# Description:
# Gets the keys of hash 'var0' as a list
#  and returns a map-iterator
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.keys.map

# 50.
#
# Title: Get a list of hash keys as strings
# Category: [ Standard lib ]
#
# Description:
# Iterates over the keys of a hash 'var0'
#  and gives a list of strings equivalents of the keys
#  Does not modify the hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.keys.collect do |var1|
  var1.to_s
end

# 51.
#
# Title: Substitute first occurance of a pattern with given string
# Category: [ Standard lib ]
#
# Description:
# Substitutes the first occurance of the pattern /str0/ in 'path' with "str1"
#  Returns a new substituted string, and doesn't change 'path' itself
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

path.sub(/str0/, "str1")

# 52.
#
# Title: Get a sublist from an array
# Category: [ Standard lib ]
#
# Description: TODO- usecase
# Gets a sub-array from 'var0' containtaing values within indexes 'var1' and
#  the difference if var2 and var1.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1, var2 - var1]

# 53.
#
# Title: Check if a hash element is not equal to a string
# Category: [ Standard lib ]
#
# Description:
# Checks if element keyed with :sym0 in hash 'var0' is un-equal to "str0"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0] != "str0"

# 54.
#
# Title: Downcased characters from regex match
# Category: [ Standard lib ]
#
# Description: TODO- usecase
# Takes the third capture from recent regular expression match
#  and gives the down-cased version of its (first/few) character(s)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

$3[0, 1].downcase

# 55.
#
# Title: Element from an array converted as Float
# Category: [ Standard lib ]
#
# Description:
# The element at an index (0) in the array 'var0' is being type-casted to Float type
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0].to_f

# 56.
#
# Title: Coerce and compare
# Category: [ Standard lib ]
#
# Description: TODO- usecase
# Returns if 'var0' is greater/equal/lesser than 'var1',
#  where 'var0' and 'var1' are obtained by coercing self into 'var2'
#  If 'var2' can't coerce, it rescues the possible NoMethodError exception
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes/No ]

  var0, var1 = var2.coerce(self)
  return(var0 <=> var1)
rescue NoMethodError

# 57.
#
# Title: Load all ruby scripts in a directory
# Category: [ Standard lib ]
#
# Description:
# Iterates over each file in a directory
#  and attempts to do a ruby 'require' on the files.
#  The directory path is obtained by using File.dirname on a file-path
#  and concatenating it with the pattern to match the filenames.
#
#  An example could be:
#    Dir[File.dirname("__FILE__","/*.rb")].each do |var0|
#      require(var0)
#    end
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Dir[File.dirname("str0") + "str1"].each do |var0|
  require(var0)
end

# 58.
#
# Title: Substitute pattern with a string and convert to lower-case
# Category: [ Standard lib ]
#
# Description:
# Replaces the occurance of the pattern /str0/ with "str1" in 'var0',
#  and then converts it to lower-case.
#  Pattern match with /str0/ takes additional option 'n'
#  which can be for example, 'i' to ignore case
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.sub(/str0/n, "str1").downcase

# 59.
#
# Title: Close an IO stream if open
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if the IO object/file-descriptor 'var0' exists,
#   and close if it is not closed.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if ((var0) && (!var0.closed?))
  var0.close
end

# 60.
#
# Title: Check if an element in the array equals given string
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if the array 'var0' exists, and if it does,
#  checks if the element at an index (0) equals "str0"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0) && (var0[0] == "str0"))

# 61.
#
# Title: Hash lookup using regex matches
# Category: [ External lib ]
#
# Description:
# Get a value from ABBR_MONTHS hash using downcased second capture
#  from a recent regualar expression match.
#  May be used as a part of a date formatting library
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

Format::ABBR_MONTHS[$2.downcase]

# 62.
#
# Title: Add prefix and suffix to option value
# Category: [ Standard lib ]
#
# Description:
# Prefixes 'str0' and suffixes 'str1' to the value at :sym0 in options hash
#  String interpolation is being used to concatenate the string version of
#  options[:sym0] with the prefix and suffix strings.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0#{options[:sym0]}str1"

# 63.
#
# Title: First value from a hash
# Category: [ Standard lib ]
#
# Description:
# Gets the first one from a list of values from the var0 hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.values.first

# 64.
#
# Title: Value from first hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value keyed at str0 from the first hash in a list.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.first["str0"]

# 65.
#
# Title: Stringify keys in a hash
# Category: [ Standard lib ]
#
# Description:
# Iterates over key-value pairs in a hash var0,
#  and build another similar hash var3 with the keys of var0 stringified.
#  Values are the same in both hashes
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var3 = var0.stringify_keys  # Needs Rails ActiveSupport

var0.each do |var1, var2|
  var3[var1.to_s] = var2
end

# 66.
#
# Title: Split string and pick a part
# Category: [ Standard lib ]
#
# Description:
# Splits the string var1 at occurances of str0,
#  get a part (first here) and assign it to var0. var1 is not modified.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1.split("str0")[0]

# 67.
#
# Title: Is given variable greater than size of another
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 is greater than the size of var1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 > var1.size

# 68.
#
# Title: Convert to lowercase string
# Category: [ Standard lib ]
#
# Description:
# Converts var0 to a string, and then converts all its alpabetic characters to lowercase.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s.downcase

# 69.
#
# Title: Hash with object_id keys
# Category: [ Standard lib ]
#
# Description:
# Gets the value keyed by the object_id of var1 from the hash var0
#  This may be used to keep track of all created objects
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1.object_id]

# 70. Element in an array at offset-ed index
#
# Title:
# Category: [ Standard lib ]
#
# Description:
# Returns an element from the array var0 which is at the index
#   determined by offsetting var1 by a number (0 here)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

return(var0[var1 - 0])

var0.on("str0", "str1", "str2") do |var1|
  var2[:sym0] = var1
end

# 72.
#
# Title: Close IO stream conditionally
# Category: [ Data or Control Flow ]
#
# Description:
# Closes the IO object var0 if it can respond to the method sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.respond_to?(:sym0)
  var0.close
end

# 73.
#
# Title: List bytes in a string
# Category: [ Standard lib ]
#
# Description:
# Lists bytes in the string var0, as an array of integers
#
# Useful programming task or idiom: [ Yes]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0.bytes

var0.bytes.to_a

# 74.
#
# Title: Value from a hash using an array element
# Category: [ Standard lib ]
#
# Description:
# Gets the value an a index (0) in the array var2,
#  and use it as the key to get the value from the hash var1.
#  Assign the obtained value to var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[var2[0]]

# 75.
#
# Title: Assign a variable to current thread
# Category: [ Standard lib ]
#
# Description:
# Assigns the local variable :sym0 to var0 for the current thread.
#  This variable will be local to the thread's root fiber.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Thread.current[:sym0] = var0

# 76.
#
# Title: Subtract using value from hash
# Category: [ Standard lib ]
#
# Description:
# Reduces var0 by the value keyed at var2 in hash var1
#  (or indexed at var2 in aray var1)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 - var1[var2]

# 77.
#
# Title: type of a variable
# Category: [ Standard lib ]
#
# Description:
# Gets the class of the variable var0 and converts it to string
# [Deprecated in ruby > 1.9]
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0.class.to_s

var0.type.to_s

# 78.
#
# Title: Is the current object of given type?
# Category: [ Standard lib ]
#
# Description:
# Checks if the type of the current object is the same as :sym0
#  This may be useful in checking if the object is instantiated
#  from the current class or from an inherited class
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

type != :sym0

# 79.
#
# Title: Divide by zero
# Category: [ Standard lib ]
#
# Description:
# Get the absolute (non-negative) value of var0 and divide it by 0.
#  Will result in a ZeroDivisionError
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.abs / 0

# 80.
#
# Title: Subarray using negative indexes
# Category: [ Standard lib ]
#
# Description:
# This will obtain a sub-array of array var0
#  by picking values between indexes -var1 and a fixed number (0 here)
#  Referring by negative indexes is useful when values at the end of the array are needed
#  For example: var0[-3,-1] gets the last three values
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[-var1..0]

# 81.
#
# Title: Compare variable's value property with another variable
# Category: [ Standard lib ]
#
# Description:
# Checks if the value of the property 'value' of var0 is equal to var1
#
# Useful programming task or idiom: [ Yes]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.value == var1

# 82.
#
# Title: File path construction
# Category: [ Standard lib ]
#
# Description:
# Constructs a path by getting the directory-name from the path str0,
#   and adding str1 to it. Can also be used to construct wildcard paths,
#   eg- File.dirname("/etc/nginx/nginx.conf", "*.conf")
#
# Useful programming task or idiom: [ Yes]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.dirname("str0") + "str1"

# 83.
#
# Title: Ruby on Rails application configuration
# Category: [ External lib ]
#
# Description:
# Gives a reference to the configuration object for the current Ruby on Rails application
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Rails.application.config

# 84.
#
# Title: Product and summation
# Category: [ Standard lib ]
#
# Description:
# Multiply two numbers (0 and 1 here) and add another number (2 here) to the product
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]
#
# => 0 * 1 + 2  # parenthesis can be removed

(0 * 1) + 2

# 85.
#
# Title: Concatenate strings
# Category: [ Standard lib ]
#
# Description:
# Add str0 to var0, then add var1 to its end, and then var2
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0 + "str0") + var1) + var2

# 86.
#
# Title: Array within a hash
# Category: [ Standard lib ]
#
# Description:
# Iterate over the array keyed by :sym0 within the hash var0
#
# Useful programming task or idiom: [ Yes]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0].each

# 87.
#
# Title: File existence check
# Category: [ Standard lib ]
#
# Description:
# Checks if a file exists,
#  after getting the file-path by (file) joining the directory (var0)
#  and the file-name str0
#
# Useful programming task or idiom: [ Yes]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.exist?(File.join(var0, "str0"))

# 88.
#
# Title: Passing size argument as hash
# Category: [ Standard lib ]
#
# Description:
# Pass hash arguments to a function, where the (stringified) size of var0 is keyed by str0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

"str0" => var0.size.to_s

# 89.
#
# Title: Non-negative check
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 is non-negative.
#  Converts it to an integer before the comparison.
#  When var0 is a string, it will be considered non-negative because
#  the integer version will be 0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_i >= 0

# 90.
#
# Title: Remove leading and trailing whilespaces
# Category: [ Standard lib ]
#
# Description:
# Removes whitespace characters from the start and end of var0
#  Whitespace characters are spaces, line-ends, tabs etc.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var0.to_s.strip

# 91.
#
# Title: Close files
# Category: [ Standard lib ]
#
# Description:
# Close the file/IO objects referenced by var0 and var1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.close
var1.close

# 92.
#
# Title: Array value at offset-ed index
# Category: [ Standard lib ]
#
# Description:
# Get the element in array var1 at index var2 offset by an number (0 here)
#  The element is then assigned to var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[var2 + 0]

# 93.
#
# Title: Iterate over child objects
# Category: [ Standard lib ]
#
# Description:
# As a part of Pathname (or similar) library, this gives an enumerator that can
#  iterate over the children of a directory - files and subdirectories
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

children.each

# 94.
#
# Title: Compare name of a variable with another
# Category: [ Standard lib ]
#
# Description:
# Checks if the name property of var0 is the same as the stringified version of var1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.name == var1.to_s

# 95.
#
# Title: Xml response to Http request
# Category: [ External lib ]
#
# Description:
# When the response is required as xml (var0.xml),
#  render :sym0, var1 as the key-value pair
#  (Used in Ruby on Rails rendering)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.xml do
  render({:sym0 => var1})
end

# 96.
#
# Title: Iterate over nested array
# Category: [ Standard lib ]
#
# Description:
# Iterate over the array nested at a particular index (0 here) within the array var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0].each

# 97.
#
# Title: End-of-file error
# Category: [ Data or Control Flow ]
#
# Description:
# If var0 doesn't contain anything, raise EOFError.
#  Useful to locate end of an IO stream while reading.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if ((var0.nil?) || (var0.empty?))
  raise(EOFError, "str0")
end

# 98.
#
# Title: Sub array
# Category: [ Standard lib]
#
# Description:
# Get a sub array from var1 by slicing out elements between indexes 0 and var2,
#  and append it to another array var0. var1 is modified in the process.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << var1.slice!(0, var2)

# 99.
#
# Title: Non-zero size
# Category: [ Standard lib ]
#
# Description:
# Checks if the size of var0 is greater than 0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size > 0

# 100.
#
# Title: check type of a variable
# Category: [ Standard lib ]
#
# Description:
# Is str0 the type/class-name of var0?
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0.class.to_s == "str0"

var0.type == "str0"

# 101.
#
# Title: Check if version is same as given variable
# Category: [ Standard lib ]
#
# Description:
# Checks if the version property of var0 is the same as another variable var1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.version == var1

# 102.
#
# Title: Pre/suffix value in params hash
# Category: [ Standard lib ]
#
# Description: TODO- usecase
# Stringify the value of :sym0 in params hash, and add str0 and str1 as prefix and suffix
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0#{params[:sym0]}str1"

# 103.
#
# Title: Difference in size of a variable and another variable
# Category: [ Standard lib ]
#
# Description:
# Subtract the size of var2 from var1, and assign it to var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1 - var2.size

# 104.
#
# Title: Convert variable to array
# Category: [ Standard lib ]
#
# Description:
# Creates an array from var0 (by calling Kernel.to_a on it) and then iterate over it
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Array(var0).each

# 105.
#
# Title: Set the response body of HTTP request
# Category: [ External lib ]
#
# Description:
# Sets the response (var0) body to var1.body.
#  var1 could itself be containing an Http body -
#  perhaps it is the response from an Http request to a third party.
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.body=(var1.body)

# 106.
#
# Title: Join arrays in a list
# Category: [ Standard lib ]
#
# Description:
# Iterates over a list of arrays var0, and joins each array
#  This doesn't actually return the joined array, nor does it modify the exising array,
#  so the snippet in the current form is not very useful
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0.map do |var1|
#      var1.join
#    end

var0.each do |var1|
  var1.join
end

# 107.
#
# Title: Getting sub-array
# Category: [ Standard lib ]
#
# Description:
# Gets a sub-array from the array var0,
#  where the chosen indexes are between var0+0 and 1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1 + 0..1]

# 108.
#
# Title: Convert array elements to symbols
# Category: [ Standard lib ]
#
# Description:
# Converts each element in a list to its symbol representation and returns the new list
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.map do |var1|
  var1.to_sym
end

# 109.
#
# Title: Get element from 2-d array
# Category: [ Standard lib ]
#
# Description:
# Returns the value at var1, var2 from the two-dimensional array var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

return(var0[var1][var2])

# 110.
#
# Title: Class name of an array element
# Category: [ Standard lib ]
#
# Description:
# Gives the class-name of an element (first here) in the array var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0].class

# 111.
#
# Title: Construct full path
# Category: [ Standard lib ]
#
# Description:
# Gets full path using path 'str0', relative to the directory in path 'str1'
#  eg:-
#   File.expand_path("../sites-available/default", File.dirname("/etc/nginx/nginx.conf"))
#  gets the file /etc/nginx/site-available/default
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.expand_path("str0", File.dirname("str1"))

# 112.
#
# Title: Logical And (&&)
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if varaibles var0 and var1 are both 0.
#  If the var0 is not 0 it returns false and the second comparison is not performed
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0 == 0) && (var1 == 0))

# 113.
#
# Title: Epoch time as float
# Category: [ Standard lib ]
#
# Description:
# Gives the Epoch time right now as a floating point number
#  Epoch time is the number of seconds since 1 Jan 1970, 00:00:00
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Time.now.to_f

# 114.
#
# Title: Current execution stack
# Category: [ Standard lib ]
#
# Description:
# Gets the current execution stack using 'caller',
#  and joins the array holding it using str0 as separator.
#  The separator is generally the new line character(\n)
#  The current execution stack will list all the method calls
#  that lead to the current method.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

caller.join("str0")

# 115.
#
# Title: Add current method to execution stack
# Category: [ Standard lib ]
#
# Description:
# This adds var0 to caller, which gives the current execution stack as an array
#  In common usage, var0 may contain the details of the current method,
#  because the what caller gives doesn't contain the curernt method.
#  Eg -
#  [__method__] + caller  # __method__ gives the name of the current method
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 + caller

# 116.
#
# Title: Value in nested hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value at 'str0' from a hash nested at :sym0 within the hash var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0]["str0"]

# 117.
#
# Title: Value in data hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value at 'str0' in the hash returned by var0.data
#  The data method gives hash of some kind of data, for eg, an HTTP request payload
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.data["str0"]

# 118.
#
# Title: Rails action_view.debug_rjs config
# Category: [ External lib ]
#
# Description:
# Sets the debug_rjs configuration in action_view to true.
#  This config enables a feature where Javascript generated in by Rjs
#  shows any exceptions as an alert and re-raises them.
#  Part of Ruby on Rails, removed from 3.1 onwards
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config.action_view.debug_rjs=(true)

# 119.
#
# Title: Rails assets.digest config
# Category: [ External lib ]
#
# Description:
# Sets the assets.digest config to true.
#  This enables generation of digest Url for assets (images/stylesheets/javascripts)
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config.assets.digest=(true)

# 120.
#
# Title: Reverse and join array
# Category: [ Standard lib ]
#
# Description:
# Reverses the array var0 and join its elements with str0 as separator
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.reverse.join("str0")

# 121.
#
# Title: Find an ActiveRecord object
# Category: [ External lib ]
#
# Description:
# Find the ActiveRecord Post object using the value of :sym0 in params hash
#  Find expects the argument to be the primary_key - generally the id.
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Post.find(params[:sym0])

# 122.
#
# Title: Split message string
# Category: [ Standard lib ]
#
# Description:
# Splits the message property of var0 on the occurances of str0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.message.split("str0")

# 123.
#
# Title: Sub array
# Category: [ Standard lib ]
#
# Description:
# Gets a sub-array from var0 that contains elements between indexes 0 and var1.length,
#  where var1 is another variable
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0, var1.length]

# 124.
#
# Title: Bitwise AND
# Category: [ Standard lib ]
#
# Description:
# Checks if bitwise AND of var0 and a number (0 here) is not equal to 1.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 & 0) != 1

# 125.
#
# Title: Enclose a hash element with an array
# Category: [ Standard lib ]
#
# Description:
# Builds an array by enclosing the value at :sym0 in var0 and
#  assign it to the same key :sym0 in var0.
#  Useful in situations where external inputs are available as list of items, but
#  some inputs are singular items, so not represented as array.
#  Data store here would need to make the singular values consistent with the
#  other values
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0] = [var0[:sym0]]

# 126.
#
# Title: source_root for generators
# Category: [ External lib ]
#
# Description:
# Sets the source_root for a generator to the path obtained by
#  expanding str0 relative to str1. Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

source_root(File.expand_path("str0", "str1"))

# 127.
#
# Title: Merge hashes
# Category: [ Data or Control Flow ]
#
# Description:
# Merges var0 with hash var1 if var0 is a hash.
#  This will include all the key-value pairs from var0 to var1, and
#  for keys that are common, values from var0 will be used.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.is_a?(Hash)
  var1.merge!(var0)
end

# 128.
#
# Title: flash for current action
# Category: [ External lib ]
#
# Description:
# Creats the flash object such that it is available only to the current action
#  and not to the next one, which is the normal behavior of flashes
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

flash.now

# 129.
#
# Title: Size comparison for objects
# Category: [ Standard lib ]
#
# Description:
# Checks if the size of var0 is less than or equal to var1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size <= var1

# 130.
#
# Title: Invoke method using send
# Category: [ Standard lib ]
#
# Description:
# Invoke the method nameed var1 on var0. var1 is converted to symbol first.
#  This may be used to invoke methods dynamically, i.e, method name can be
#  based on a user input or result of an expression. Also invokes private methods.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.send(var1.to_sym)

# 131.
#
# Title: Formatting log message
# Category: [ Standard lib ]
#
# Description:
# This sets the format in which logs must be written to the log file.
#  It may be from the the 'logger' library, where the components are -
#  var0 : severity
#  var1 : time
#  var2 : process-id of current program
#  var3 : progname
#  var4 : message
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

[var0[0..0], format_datetime(var1), var2, var0, var3, msg2str(var4)]

# 132.
#
# Title: Chained pattern substitution
# Category: [ Standard lib ]
#
# Description:
# Substitute all the occurances of pattern /str0/ with str1,
#  /str2/ with str3 and /str4/ with str5 in var0.
#  Stringifies var0 first. Gives the substituted string, doesn't modify var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s.gsub(/str0/, "str1").gsub(/str2/, "str3").gsub(/str4/, "str5")

# 133.
#
# Title: Prefixed inspect
# Category: [ Standard lib ]
#
# Description:
# Prefix the human readable representation (inspect) of var0 with str0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => "str0#{var0.inspect}"  # using interpolation

"str0" + var0.inspect

# 134.
#
# Title: Determine Rails gem version
# Category: [ External lib ]
#
# Description:
# Determines the version of the Rails gem.
#  If defined as the constant RAILS_GEM_VERSION, use it,
#  otherwise get it from the environment (ENV) if present,
#  or else parse it using parse_gem_version method using the ruby from the environment.
#  This is a part of boot.rb from pre-bundler versions of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if defined?(RAILS_GEM_VERSION)
  RAILS_GEM_VERSION
else
  if ENV.include?("str0")
    ENV["str0"]
  else
    parse_gem_version(read_environment_rb)
  end
end

# 135.
#
# Title: Compare variable sizes
# Category: [ Standard lib ]
#
# Description:
# Checks if the size of var0 isn't equal to the size of var1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size != var1.size

# 136.
#
# Title: Flatten array and join
# Category: [ Standard lib ]
#
# Description:
# Flattens the array var0 into a one-dimensional array,
#  and joins the elements into a string using str0 as separator.
#  Flatten extracts the elements of any sub-arrays, and replaces them with the their elements,
#  and this happens recurisively
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.flatten.join("str0")

# 137.
#
# Title: Value from params hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value keyed by 'str0' in the 'params' hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

params["str0"]

# 138.
#
# Title: Variable's length
# Category: [ Standard lib ]
#
# Description:
# Tells how much is the length of var0 more than a number (0 here)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.length - 0

# 139.
#
# Title: Delete current thread's entry from a hash
# Category: [ Standard lib ]
#
# Description:
# Removes the reference of the current thread from the hash var0
#  The hash may in use for some kind of thread book-keeping here.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.delete(Thread.current)

# 140.
#
# Title: Load ruby script
# Category: [ Standard lib ]
#
# Description:
# Load (require) a ruby file using its full path.
#  The path is constructed by applying File.expand_path on var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

require(File.expand_path(var0))

# 141.
#
# Title: Mode of a file
# Category: [ Standard lib ]
#
# Description:
# Gets the mode of the file var0 using File.stat
#  File.stat returns a File::Stat object that has mode as a property
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.stat(var0).mode

# 142.
#
# Title: Length of a hash element
# Category: [ Standard lib ]
#
# Description:
# Gives the length of the object keyed at 'var1' in hash 'var0'
#  If var0 is an array and var1 refers to the index
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1].length

# 143.
#
# Title: Current thread's local variable
# Category: [ Standard lib ]
#
# Description:
# The 'method' gives the value of the local variable :sym0 in the current thread
#  Thread.current refers to the currently running thread,
#  and the [:sym0] operation on a thread object gives the value of local variable :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method
  Thread.current[:sym0]
end

# 144.
#
# Title: Last element of array within a hash
# Category: [ Standard lib ]
#
# Description:
# Gets the last element of an array keyed at :sym0 in hash var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0].last

# 145.
#
# Title: URI from string
# Category: [ Standard lib ]
#
# Description:
# Create an instance of URI (actually instance of a subclass of URI)
#  using the value at 'str0' in params hash var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

URI.parse(var0["str0"])

# 146.
#
# Title: Boolean AND and right shift operations
# Category: [ Standard lib ]
#
# Description:
# Performs a boolean AND between var0 and a number (0 here)
#  and then (boolean) right shifts the result by another number (1)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 & 0) >> 1

# 147.
#
# Title: Http basic auth
# Category: [ Data or Control Flow ]
#
# Description:
# Sets the basic-auth parameters (username and password),
#  before making an Http request, perhaps using Net::HTTP.
#  username and password are obtained from var0, as var0.user and var0.password
#  Done only when the username (var0.user) is available.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.user
  var1.basic_auth(var0.user, var0.password)
end

# 148.
#
# Title: File existence check
# Category: [ Standard lib ]
#
# Description:
# Checks if the file var0 (doesn't) exist?
#  Gives false if it does, true if it doesn't
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!File.exists?(var0)

# 149.
#
# Title: Rails action_controller.consider_all_requests_local config
# Category: [ External lib ]
#
# Description:
# Sets the consider_all_requests_local config in action_controller to true.
#  This makes sure that error messages contain debugging details (exception backtrace etc)
#  When it is set to false, the error messages are more user focussed, with fewer details
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config.action_controller.consider_all_requests_local=(true)

# 150.
#
# Title: Set local variable in current thread
# Category: [ Standard lib ]
#
# Description:
# Assign an empty array to the local variable :sym0 within the current thread.
#  The variable will be local to the root fiber.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Thread.current[:sym0] = []

# 151.
#
# Title: Element of an array as string
# Category: [ Standard lib ]
#
# Description:
# Stringify an element (first here) of array var1 and assign it to var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[0].to_s

# 152.
#
# Title: clone an object
# Category: [ Standard lib ]
#
# Description:
# Clone var2 and assign it to the hash var0 at key var1.
#  The clone method used produces a 'shallow' copy of var2,
#  where all the instance variables of var2 are copied, but not
#  the objects they reference.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1] = var2.clone

# 153.
#
# Title: Split at pattern
# Category: [ Standard lib ]
#
# Description:
# Splits var0 on the occurances of pattern /str0/, after converting it to a string
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s.split(/str0/)

# 154.
#
# Title: Time difference as a string
# Category: [ Standard lib ]
#
# Description:
# Reduce var0 seconds from current time,
#  and add the prefix/suffix of str0/str1 to its string version.
#  If var0 is another Time object, this uses the difference in times.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0#{Time.now - var0}str1"

# 155.
#
# Title: Append to last element
# Category: [ Standard lib ]
#
# Description:
# Append var1 to the last string/array within var0
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.last << var1

# 156.
#
# Title: Absolute value of difference
# Category: [ Standard lib ]
#
# Description:
# Assigns the absolute value of the difference between var1 and var2 to var0.
#  The abs method is used to get the absolute value. Absolute value here means
#  difference is always expressed as a positive value.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = (var1 - var2).abs

# 157.
#
# Title: parsing Time
# Category: [ External lib ]
#
# Description:
# Parses the time from given params hash var0, using the value at key str0.
#  Uses Rails active_support/time for the parse method.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Time.parse(var0["str0"])

# 158.
#
# Title: convert to camel-case
# Category: [ External lib ]
#
# Description:
# Stringify var0 and then convert it to camel-case.
#  The string is converted to UpperCamelCase, where each part of the string separated
#  by underscore is capitalized. (first letter to uppercase and the rest to lowercase).
#  Needs Rails active_support/inflector
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s.camelize

# 159.
#
# Title: Create new object
# Category: [ Standard lib ]
#
# Description:
# Creates a new Post object using path property of var1, and assign it to var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = Post.new(var1.path)

# 160.
#
# Title: update hash
# Category: [ Data or Control Flow ]
#
# Description:
# Updates hash var1 using var0 if its a Hash
#  All entries of var0 are copied to var1, and duplicate enties are overwritten with
#  values from var0.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var1.merge(var0)     # merge and update are the same

if var0.is_a?(Hash)
  var1.update(var0)
end

# 161.
#
# Title: Compare text property
# Category: [ Standard lib ]
#
# Description:
# Compare text property of var0 with var1
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.text == var1

# 162.
#
# Title: !respond_to
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 can respond to the method :sym0, and reverses the result.
#  Gives false if it can, true if it can't.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.respond_to?(:sym0)

# 163.
#
# Title: Execute block within iterator
# Category: [ Standard lib ]
#
# Description:
# Iterate over the current object and execute the passed block in each iteration.
#  The iterator is passed as an argument to the block in each iteration, and the
#  result of the block is pushed to the array var1.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

each do |var0|
  var1 << yield(var0)
end

# 164.
#
# Title: Convert to array and iterate
# Category: [ Standard lib ]
#
# Description:
# Gives an enumerator that can iterate over the array version of var0.
#  The enumerator returned here can produce a new array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_a.collect

# 165.
#
# Title: Stringify and push
# Category: [ Standard lib ]
#
# Description:
# Append the stringified version of var1 to array/string var0
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << var1.to_s

# 166.
#
# Title: Check if hash contains keys :sym0/:sym1
# Category: [ Data or Control Flow ]
#
# Description:
# Tells if the options hash contains either of the keys :sym0 and :sym1,
#  and at least one of them has non-nil values.
#  Usecase: may be done before assigning a value to one of the keys
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((options[:sym0]) || (options[:sym1]))

# 167.
#
# Title: Logical && and ! on hash values
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if there is a non-nil element at key :sym0, and
#  the key :sym1 doesn't exist or its value is nil/false
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0[:sym0]) && (!var0[:sym1]))

# 168.
#
# Title: update_attribute
# Category: [ External lib ]
#
# Description:
# The 'method' when invoked changes the position_column attribute to a number (0 here)
#  It calls the ActiveRecord update_attribute method, which changes a single attribute
#  and saves the change, without performing any validations.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method
  update_attribute(position_column, 0)
end

# 169.
#
# Title: Compare object size
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if the size of var1 is greater than or equal to var0.
#  Gives false if var1 is nil.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0) && (var1.size >= var0))

# 170.
#
# Title: Escape html/javascript
# Category: [ External lib ]
#
# Description:
# Escapes any html/javascipt from var0.name
#  Escaping replaces characters looking like html/javascript with their
#  equivalent escape codes.
#  This method is used in Rails views (versions older than 3.0) to
#  negotiate cross-site scripting attacks
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

h(var0.name)

# 171.
#
# Title: Sort hash on values
# Category: [ Standard lib ]
#
# Description:
# Sorts the hash var0 in reverse order of its values.
#  This works by passing a block to the sort_by method whose return value
#  decides what to use for the sorting. The sort does't return a hash but a
#  sorted two dimenstional array similar to the hash.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.sort_by do |var1, var2|
  -var2
end

# 172.
#
# Title: Array type and size check
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if var0 is an instance of Array (or a subclass) and if it is empty
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0.is_a?(Array) && var0.empty?  # uses empty? instead of var0.size==0

((var0.is_a?(Array)) && (var0.size == 0))

# 173.
#
# Title: action_dispatch config
# Category: [ External lib ]
#
# Description:
# Refers to the action_dispatch config hash.
#  This hash contains configuration related to the http request, cookies and sessions.
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

config.action_dispatch

# 174.
#
# Title: Integer-ify and multiply
# Category: [ Standard lib ]
#
# Description:
# Multiply integer version of var1 with a number (0 here) and assign it to var0
#  Multiplication with 0 will always give 0, so this snippet is of little use.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1.to_i * 0

# 175.
#
# Title: Get position_column
# Category: [ External lib ]
#
# Description:
# Gets the position_column by invoking the position_column method on
#  the current object using send, and converts the result to integer.
#  Most probably a part of the acts_as_list library.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

send(position_column).to_i

# 176.
#
# Title: Check if variable is a boolean (true/false)
# Category: [ Data or Control Flow ]
#
# Description:
# Checks if a variable is equal to the boolean values true or false.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]


((var0 == true) || (var0 == false))

# 177.
#
# Title: Globally substitute patterns
# Category: [ Standard lib ]
#
# Description:
# Substitute all occurances of pattern /str0/ with 'str1' and /str2/ with 'str1'
#  in var0. Returns a newly substituted string without modifying var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.gsub(/str0/, "str1").gsub(/str2/, "str1")

# 178.
#
# Title: raise StandardError
# Category: [ Standard lib ]
#
# Description:
# Raise the StandardError exception using "str0" as exception message
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => raise StandardError, "str0"

raise(StandardError.new("str0"))

# 179.
#
# Title: String type check
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 is (not) an instance of String.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.is_a?(String)

# 180.
#
# Title: Stringify and get size
# Category: [ Standard lib ]
#
# Description:
# Convert var0 to a string and get its size
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s.size

# 181.
#
# Title: key-value pair
# Category: [ Standard lib ]
#
# Description:
# Gives a key-value pair where key :sym0 points the class-name of var0.
#  This could be an argument to a method, eg -
#   def foo(x, y={}); end
#   foo(2, :sym0 => var0.class.name)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

:sym0 => var0.class.name

# 182.
#
# Title: Iterate var0 times
# Category: [ Standard lib ]
#
# Description:
# Creates an enumerator that iterates var0 times with values 0 through var0-1.
#  The map makes enumerator return an array.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.times.map

# 183.
#
# Title: operations on RbConfig
# Category: [ Standard lib ]
#
# Description:
# Concatenates two RbConfig::CONFIG values - at keys str0 and str1.
#  RbConfig::CONFIG contains info on the current ruby installation, like the host_os
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

RbConfig::CONFIG["str0"] + RbConfig::CONFIG["str1"]

# 184.
#
# Title: Array element to Float
# Category: [ Data or Control Flow ]
#
# Description: TODO-usecase
# Gives the float version of an element (at index 0) from array var1.
#  If the element is nil, it returns 1.0. Assigns the result to var0.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = ((var1[0]) || (1)).to_f

# 185.
#
# Title: Add hash element to variable
# Category: [ Standard lib ]
#
# Description:
# Add the element at :sym0 in hash var1 to var0
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 + var1[:sym0]

# 186.
#
# Title: Stringify body
# Category: [ Standard lib ]
#
# Description:
# Convert body property of var0 to string.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.body.to_s

# 187.
#
# Title: String type check for array element
# Category: [ Standard lib ]
#
# Description:
# Check if an element (at index 0) of array var0 is a string
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0].is_a?(String)

# 188.
#
# Title: Check zero length
# Category: [ Standard lib ]
#
# Description:
# Checks if the length of var0 is 0 - whether it is an empty array or hash
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.length == 0

# 189.
#
# Title: Hash using (data) types
# Category: [ Standard lib ]
#
# Description:
# Gets the value in the hash keyed by the type of var1
#  Perhaps the hash here stores entries for objects keyed by their types,
#  to do some kind of book-keeping on objects
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1.type]

# 190.
#
# Title: Joined array pre/suffixed
# Category: [ Standard lib ]
#
# Description:
# Joins the array var0 using 'str1', and pre/suffixes the joined string
#  with 'str0' and 'str2'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes  ]
# There's a more common way to write the code snippet: [ No ]

("str0" + var0.join("str1")) + "str2"

# 191.
#
# Title: Process id
# Category: [ Standard lib ]
#
# Description:
# Gets the process id of the current ruby process as a string
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Process.pid.to_s

# 192.
#
# Title: Pretty print using humanize
# Category: [ External lib ]
#
# Description:
# Convert var0 to string, and then print it in pretty form using 'humanize':
#  humanize capitalizes the first letter; turns underscores into spaces and
#  strips the trailing '_id' if any.
#  eg -
#  'employee_salary_id' becomes 'Employee salary'
#  Part of the Rails - active_support/inflector
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s.humanize

# 193.
#
# Title: Rails application initialization
# Category: [ External lib ]
#
# Description:
# These are steps in initializing a Rails application (Rails 2.0 to 2.3),
#  load_rubygems tries loading a Rails compatible version of rubygems library
#  load_rails_gem tries to load the correct version of rails, and exits with error if it can't
#  the require step loads the initializer script
#  This snippet is generally present in the config/boot.rb file of the project, like so -
#    class GemBoot < Boot
#       def load_initializer
#         self.class.load_rubygems
#         load_rails_gem
#         require 'initializer'
#       end
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

self.class.load_rubygems
load_rails_gem
require("str0")

# 194.
#
# Title: Split and capitalize parts
# Category: [ Standard lib ]
#
# Description:
# Split var0 at pattern /str0/ and build an array with each part capitalized.
#  The capitalize converts first character of a string to up-case, and the
#  rest to downcase.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# var0.split(/str0/).map(&:capitalize)   # using & to convert the method to a proc

var0.split(/str0/).map do |var1|
  var1.capitalize
end

# 195.
#
# Title: Append string to name
# Category: [ Standard lib ]
#
# Description:
# Append "str0" to name.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

name + "str0"

# 196.
#
# Title: Last part of pathname
# Category: [ Standard lib ]
#
# Description:
# Gets the last component of a file path.
#  eg-
#  File.basename '/var/code/project/config.rb'  # =>  'config.rb'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.basename(var0.path)

# 197.
#
# Title: load ruby script
# Category: [ Standard lib ]
#
# Description:
# Load (using require) a ruby script by using its full path.
#  The full path is constructed using File.expand_path, which
#  expands the path 'str0' relative to 'str1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

require(File.expand_path("str0", "str1"))

# 198.
#
# Title: class name for object
# Category: [ Standard lib ]
#
# Description:
# Gets the class of the object. The value obtained is a constant
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

object.class

# 199.
#
# Title: Conditional assignment
# Category: [ Data or Control Flow ]
#
# Description:
# If var0 exists and its size is greater than 0, (non empty array/hash)
#  then assign var0 to var1 and set var0 to nil
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if ((var0) && (var0.size > 0))
  var1 = var0
  var0 = nil
end

# 200.
#
# Title: Custom inspect for hash
# Category: [ Standard lib ]
#
# Description:
# Iterates over the hash var0 to get an array of strings composed by
#  concatenating the hash key and value with str0 and str1. Then joins
#  the resulting array using str2. This may be a custom inspect for the
#  hash - to define an alternate way of printing the hash.
#  eg,
#   var0.map do |var1, var2|
#     "@#{var1}-->#{var2}"    # str0: '@', str1: '-->', str2: ';'
#   end.join("str2")
#
#  gets: "@a-->23; @b-->45" for var0 = {:a=>23, :b=>45}
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.map do |var1, var2|
  "str0#{var1}str1#{var2}"
end.join("str2")

# 201.
#
# Title: Stringified hash element
# Category: [ Standard lib ]
#
# Description:
# Value at the key 'str0' in hash 'var1' converted to string and assigned to 'var0'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1["str0"].to_s

# 202.
#
# Title: headers
# Category: [ External lib ]
#
# Description:
# Get a particular header 'var0' value from the 'headers' hash.
#  The headers hash contains the request's Http headers.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

headers[var0]

# 203.
#
# Title: Key exists in any of the hashes
# Category: [ Standard lib  ]
#
# Description:
# Checks if the key var1 exists in any of the hashes var1 or var2.
#  Gives false only if it exists in none.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0[var1]) || (var2[var1]))

# 204.
#
# Title: raise Exception
# Category: [ Standard lib ]
#
# Description:
# Raises the 'Exception' exception with the message 'str0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# raise Exception, "str0"

raise(Exception.new("str0"))

# 205.
#
# Title: Is variable equal to symbols
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 equals either one of :sym0 or :sym1
#  Gives false if it doesn't equal either.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes/No ]
# There's a more common way to write the code snippet: [ Yes/No ]
#
# var0.in?(:sym0, :sym1)  # using Rails active_support/core_ext

((var0 == :sym0) || (var0 == :sym1))

# 206.
#
# Title: full-path of current Http request
# Category: [ External lib ]
#
# Description:
# Gives the full path string of the requested URl (includes params too)
#  Here request is an ActionDispatch::Request, and the code may be used in a Rails controller
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

request.fullpath

# 207.
#
# Title: Array type check
# Category: [ Standard lib ]
#
# Description:
# checks if var0 is not an instance of Array
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.is_a?(Array)

# 208.
#
# Title: Subtract and add
# Category: [ Standard lib ]
#
# Description:
# Subtracts 'var1' from 'var0' and add 'var2' to the difference.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 - var1) + var2

# 209.
#
# Title: Blank check for hash
# Category: [ Standard lib ]
#
# Description:
# Checks if the object at 'str0' in 'var0' is blank?
#  It will be considered blank if it is false, empty (array/string/hash) or a
#  whitespaced string. Part of Rails activesupport/core_ext
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0["str0"].blank?

# 210.
#
# Title: Rational number using utc_offset
# Category: [ Standard lib ]
#
# Description:
# Gives a rational number where utc_offset is the numerator and a number (0 here)
#  is the denominator. In this case it will cause a ZeroDivisionError.
#  The utc_offset gives the difference of current time's zone from utc in seconds
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Rational(utc_offset, 0)

# 211.
#
# Title: Stringified first element of array
# Category: [ Standard lib ]
#
# Description:
# Gives the first element of array var0 stringified.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.first.to_s

# 212.
#
# Title: gsub using $1
# Category: [ Standard lib ]
#
# Description:
# Substitutes in var0 (stringified), all occurances of pattern /str0/ with
# a replacement string. The replacement string here is the 'str1' prefixed, upcased
# version of the first capture from the pattern match in gsub. The first value that
# matches the parenthesized part of the pattern (/str0/) is stored in $1.
# eg -
# 	"abc-123".match(/abc-(\d+)/) # => $1 is '123'
#
# A similar substitution is carried out again on the resulting string, using another
# pattern /str2/.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# var0.to_s.gsub(/str0/, "str1#{$1.upcase}").gsub(/str2/, $1.upcase)

var0.to_s.gsub(/str0/) do
  "str1#{$1.upcase}"
end.gsub(/str2/) do
  $1.upcase
end

# 213.
#
# Title: Check for values in ENV
# Category: [ Standard lib ]
#
# Description:
# Checks if the environment (ENV hash) contains certain elements (str0 and str1) or not
# True only if both the needed elements exists
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((ENV["str0"]) && (ENV["str1"]))

# 214.
#
# Title: Rails : enable whiny nils
# Category: [ External lib ]
#
# Description:
# Configuration to enable whiny_nils.
# This feature adds a warning (as an exception) when 'id' is invoked on nil,
#  which gives 4 otherwise. The behavior has changed Ruby 1.93 onwards,
#  (nil.id now throws error), so whiny_nil too is deprecated from Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

config.whiny_nils=(true)

# 215.
#
# Title: nil check on two variables
# Category: [ Standard lib ]
#
# Description:
# Checks if both var0 and var1 are nil
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => (var0 && var1).nil?

((var0.nil?) && (var1.nil?))

# 216.
#
# Title: Rails find object
# Category: [ External lib ]
#
# Description:
# Finds an object in a collection using the block. The block checks if
#  the name property of compared object equals 'var2'.
#  Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.find do |var1|
  var1.name == var2
end

# 217.
#
# Title: Add Hash element to another variable
# Category: [ Standard lib ]
#
# Description:
# Adds hash element at key 'var1' to another variable 'var2'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1] + var2

# 218.
#
# Title: Stringify Symbol
# Category: [ Data or Control Flow ]
#
# Description:
# Convert var0 to string if it is a Symbol
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.kind_of?(Symbol)
  var0 = var0.to_s
end

# 219.
#
# Title: Empty check on array element
# Category: [ Standard lib ]
#
# Description:
# Checks if an element in array 'var0' is empty?
#  A value is empty when it is a zero length string or an empty array or an empty hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0].empty?

# 220.
#
# Title: Subarray
# Category: [ Standard lib ]
#
# Description:
# Gets a subarray from 'var0' such that it contains element var0.size-num through num,
#  where num is 0 here. So the elements in the sub-array depend on the size of the array
#  and the number num
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var0.size - 0, 0]

# 221.
#
# Title: Stringify type
# Category: [ Standard lib ]
#
# Description:
# Stringifies type- where type is a constant (a class name), converts it to string
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

type.to_s

# 222.
#
# Title: Integer-ified params hash value
# Category: [ Standard lib ]
#
# Description:
# Gets the value at :sym0 in the params hash, converts to integer and assigns it to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = params[:sym0].to_i

# 223.
#
# Title: webrick cgi initialization
# Category: [ Standard lib ]
#
# Description:
# Does setup_cgi_env for Apache if the constant MOD_RUBY exists and the environment
#  contains a value for 'str0'. This is part of the Webrick::Cgi initialization
#  in 'webrick' library.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if ((defined?(MOD_RUBY)) && (!ENV.key?("str0")))
  Apache.request.setup_cgi_env
end

# 224.
#
# Title: Addition on variables
# Category: [ Standard lib ]
#
# Description:
# Add variables var0, var1, var2, var3
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0 + var1) + var2) + var3

# 225.
#
# Title: Swap position in acts_as_list
# Category: [ External lib ]
#
# Description:
# As a part of the acts_as_list gem,
# this swaps the position of the current item with the next lower-item.
# Performs an increament-position for the current object, and a decrement-position
# for the 'lower_item' object. The two steps are wrapped within a transaction.
# Does nothing if lower_item doesn't exist.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method
  unless lower_item
    return
  end
  acts_as_list_class.transaction do
    lower_item.decrement_position
    increment_position
  end
end

# 226.
#
# Title: log info
# Category: [ Standard lib ]
#
# Description:
# Logs 'str0' as info (log-level) using logger.
#  This is using the 'logger' standard library
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

logger.info("str0")

# 227.
#
# Title: Packing an array
# Category: [ Standard lib ]
#
# Description: TODO - details of pack
# Packs the array into a binary sequence using template string str1, and then
# removes occurances of characters of str2 from the sequence string. The array
# is constructed by interpolating var0, str0 and var1 into a string, and then
# wrapping the string with an array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

["#{var0}str0#{var1}"].pack("str1").delete("str2")

# 228.
#
# Title: raise ArgumentError conditionally
# Category: [ Data or Control Flow ]
#
# Description:
# Raise ArgumentError with message "str0" if 'var0' is less than or equal to 0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0 <= 0
  raise(ArgumentError, "str0")
end

# 229.
#
# Title: Rails action_controller.consider_all_requests_local config
# Category: [ External lib ]
#
# Description:
# Sets the Rails action_controller config consider_all_requests_local to false
# When true, this makes sure that error messages contain debugging details
# (error, exception backtrace etc). When it is set to false, the error messages
# are more user focussed, with fewer details.
# Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

config.action_controller.consider_all_requests_local=(false)

# 230.
#
# Title: Add strings and variables, and append
# Category: [ Standard lib ]
#
# Description:
# Adds str0 with var1 and str1, and then append the result to var0
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << ("str0" + var1) + "str1"

# 231.
#
# Title: Stringify hash value
# Category: [ Standard lib ]
#
# Description:
# Gets the value at :sym0 in hash var1, stringifies it, and then assigns it to var0
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[:sym0].to_s

# 232.
#
# Title: Hash value false check
# Category: [ Standard lib ]
#
# Description:
# Checks if the value at str0 in hash var0 is false
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0["str0"] == false

# 233.
#
# Title: String equality checks
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 equals either of 'str0' or 'str1' or 'str2'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# var0.in?("str0", "str1", "str2")  # Uses Rails active_support/core_ext

((((var0 == "str0") || (var0 == "str1"))) || (var0 == "str2"))

# 234.
#
# Title: Stringified, prefixed params hash value
# Category: [ Standard lib ]
#
# Description:
# Prefixes str0 to stringified params[:sym0] value
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0#{params[:sym0]}"

# 235.
#
# Title: cache retrieval
# Category: [ External lib ]
#
# Description:
# Obtains the value at key var0 from the cache 'cache'.
# Uses some external caching library.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

cache[var0]

# 236.
#
# Title: load (require) ruby script
# Category: [ Standard lib ]
#
# Description:
# Loads a ruby file by constructing its path using the directory name from str0,
# and then joining it with str1, str3 and str3; and then expanding to a full path name.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

require(File.expand_path(File.join(File.dirname("str0"), "str1", "str2", "str3")))

# 237.
#
# Title: Variable size comparison
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 is equal to var1.size
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 == var1.size

# 238.
#
# Title: variable type check
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 is in instance of the class of the current object (self).
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.kind_of?(self.class)

# 239.
#
# Title: Summation and comparison
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 is less than the sum of var1 and var2
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 < var1 + var2

# 240.
#
# Title: nil and empty check
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 is nil/false or empty (array/hash/string)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((!var0) || (var0.empty?))

# 241.
#
# Title: Delete elements from duplicate of an array/hash
# Category: [ Standard lib ]
#
# Description:
# Iterates over the duplicate of an array/hash, and based on result of the block applied,
# elements are deleted from it
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.dup.delete_if

# 242.
#
# Title: Hash default value check
# Category: [ Standard lib ]
#
# Description:
# Checks if the default value of the hash var0 is nil. Default value is the value
# the hash gives for a key if its value is not set
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.default.nil?

# 243.
#
# Title: Variable length
# Category: [ Standard lib ]
#
# Description:
# Subtracts a number (0) from the length of var1 and checks if it equals var0
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 == var1.length - 0

# 244.
#
# Title: Last part of split variable
# Category: [ Standard lib ]
#
# Description:
# Split the var0 at 'str0' and get the last part
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.split("str0").last

# 245.
#
# Title: respond_to check
# Category: [ Standard lib ]
#
# Description:
# Checks if the current object does not respond_to var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!respond_to?(var0)

# 246.
#
# Title: First value in a hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value at the first key of hash var0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0.first[1]  # Hash#first gives the first key-value pair as an array.

var0[var0.keys.first]

# 247.
#
# Title: size difference
# Category: [ Standard lib ]
#
# Description:
# Difference of size of var0 and another variable var1
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size - var1

# 248.
#
# Title: String concatenation
# Category: [ Standard lib ]
#
# Description:
# Concatenate strings "str0", "str1" and "str2".
# The presence/position of parenthesis doesn't make any difference to the final result
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

("str0" + "str1") + "str2"

# 249.
#
# Title: pluralize string
# Category: [ External lib ]
#
# Description:
# Returns the plural form of the word in the string.
# Part of Rails active_support/inflector
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

name.pluralize

# 250.
#
# Title: Prefix joined array
# Category: [ Standard lib ]
#
# Description:
# Prefix str0 to the string obtained by joining array var0 using str1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0" + var0.join("str1")

# 251.
#
# Title: Primary key
# Category: [ External lib ]
#
# Description:
# Gets the primary key of the current ActiveRecord model object.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

self.class.primary_key

# 252.
#
# Title: Compare array element with a symbol
# Category: [ Standard lib ]
#
# Description:
# Checks if an element (first here) in array var0 does not equal :sym0
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]

var0[0] != :sym0

# 253.
#
# Title: String multiplication
# Category: [ Standard lib ]
#
# Description:
# This constructs a string by repeating "str0" var0 times (var0 should be an integer),
# and then adds (appends) the string var1 to it
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

("str0" * var0) + var1

# 254.
#
# Title: Pseudo random number
# Category: [ Standard lib ]
#
# Description:
# Generates a pseudo-random number between 0 and 1, and stringifies it
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

rand(0).to_s(1)

# 255.
#
# Title: Hash element for lowercased key
# Category: [ Standard lib ]
#
# Description:
# Gets the hash element at key obtained by converting var1 to lowercase.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1.downcase]

# 256.
#
# Title: Conditional string type conversion
# Category: [ Data or Control Flow ]
#
# Description:
# Converts var0 to a string if it is not a String.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

unless String === var0
  var0 = var0.to_s
end

# 257.
#
# Title: Assign hash element from array
# Category: [ Standard lib ]
#
# Description:
# Assigns the first element of 'var2' to key 'var1' in hash 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1] = var2.first

# 258.
#
# Title: Size check
# Category: [ Standard lib ]
#
# Description:
# Checks if the size of var0 is not the same as var1
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size != var1

# 259.
#
# Title: nil or empty? check
# Category: [ Data or Control Flow ]
#
# Description:
# Return if var0 is nil or empty (array/hash/string)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if ((var0.nil?) || (var0.empty?))
  return
end

# 260.
#
# Title: ActionMailer delivery_method
# Category: [ External lib ]
#
# Description:
# Sets the delivery_method configuration for action_mailer in a Rails application.
# Determines how emails will be sent from the application - using :smtp, :sendmail,
# :test, :file or a custom delivery-method.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

config.action_mailer.delivery_method=(:sym0)

# 261.
#
# Title: Value from options hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value at key 'var0' from options hash
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

options[var0]

# 262.
#
# Title: Instantiate a new object
# Category: [ Standard lib ]
#
# Description:
# Creats a new object of the class 'var0' by passing 'var1.request_uri' as parameter
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.new(var1.request_uri)

# 263.
#
# Title: Element from array within hash
# Category: [ Standard lib ]
#
# Description:
# Gets an element (first here) from the array at key 'var1' within hash 'var0'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1][0]

# 264.
#
# Title: Push to array if block given
# Category: [ Standard lib ]
#
# Description:
# Push var1 to the string/array 'var0' if a block is given
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if block_given?
  var0 << var1
end

# 265.
#
# Title: Interchange variable values based on substring
# Category: [ Standard lib ]
#
# Description:
# If the substring sliced from var0 (length 1; index 0) equals "str0"
# and the size of var0 is greater than 2, then assign var0 to var1, var2 to var0
# and var1 back to var2.
# This does not swap any pairs of variables here, it could have if the assignments
# were done as separate expressions
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if ((var0[0, 1] == "str0") || (var0.size > 2))
  var1, var0, var2 = var0, var2, var1
end

# 266.
#
# Title: Hash element type check
# Category: [ Standard lib ]
#
# Description:
# Checks if the value at key 'var1' in the hash 'var0' is an array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1].is_a?(Array)

# 267.
#
# Title: Delete from hash and stringify
# Category: [ Standard lib ]
#
# Description:
# Deletes the element at 'str0' from hash 'var0', and returns the value
# after converting it to a string
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.delete("str0").to_s

# 268.
#
# Title: Compare variable's length
# Category: [ Standard lib ]
#
# Description:
# Checks if the length of 'var0' is greater than or equal to 'var1'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.length >= var1

# 269.
#
# Title: Delete from hash
# Category: [ Standard lib ]
#
# Description:
# Removes the element referred by object_id of 'var1' from the hash 'var0' and
# returns its value.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.delete(var1.object_id)

# 270.
#
# Title: Concatenate strings
# Category: [ Standard lib ]
#
# Description:
# Add 'str2' and 'str3' to a string constructed by interpolating 'var0'
# within 'str0' and 'str1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

("str0#{var0}str1" + "str2") + "str3"

# 271.
#
# Title: Bundler.require in a Rails application
# Category: [ External lib ]
#
# Description:
# Loads all the gems associated with the mentioned groups ('str0', 'str1' and :sym0)
# in the Rails application. This is a part of the application load sequence in Rails version
# 3 and greater.
# Bundler.require loads all the gems present in the Gemfile. When called with a list of
# groups, it loads the gems from those groups only. Rails.groups gives a list of all Rails
# groups based on the current environment and the passed argument hash.
#
# So Rails.groups({:sym0 => ["str0", "str1"]}) will load a group :sym0 too when the current
# environment is either 'str0' or 'str1'. And subsequently Bundler.require will load
# all the gems from groups 'str0', 'str1' and :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Bundler.require(*Rails.groups({:sym0 => ["str0", "str1"]}))

# 272.
#
# Title: Move to bottom in acts_as_list
# Category: [ External lib ]
#
# Description:
# As a part of the acts_as_list gem, this snippet attempts to move the current item
# to the bottom of the list. It does that by decreamenting positions of all the lower items,
# so they are moved up the list, and then assign the bottom position to the current item.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

decrement_positions_on_lower_items
assume_bottom_position

# 273.
#
# Title: Value from response hash
# Category: [ Standard lib ]
#
# Description:
# Gets a value referred by 'str0' from the response hash
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

response["str0"]

# 274.
#
# Title: Execute an external command
# Category: [ Standard lib ]
#
# Description:
# Executes the external command 'var1' using 'var2' and 'edit_path(var0.path)' as
# the parameters to the command. This execution replaces the current ruby process
# with the command, so any code after this line is never reached.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.exec(var1, var2, edit_path(var0.path))

# 275.
#
# Title: Shift array and assign
# Category: [ Standard lib ]
#
# Description:
# Removes the first element from array var1, and assigns it to the hash var0
# at key :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0] = var1.shift

# 276.
#
# Title: require ruby scripts
# Category: [ Standard lib ]
#
# Description:
# Load (require) ruby scripts by the names 'str0', 'str1', 'str2', 'str3'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

require("str0")
require("str1")
require("str2")
require("str3")

# 277.
#
# Title: underscored classname
# Category: [ External lib ]
#
# Description:
# Get the class name of 'var0', and convert it to string, and then get its underscored version.
# The underscore method replaces all hyphens in the string with underscores, and converts all
# alphabets to lowercase. eg -
#  'Active-Record::Base'.underscore  # => active_record/base
# underscore is a part of Rails active_support/core_ext
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.class.to_s.underscore

# 278.
#
# Title: autoload symbol
# Category: [ Standard lib ]
#
# Description:
# autoload registers the second argument as the path-name for the first argument (the symbol)
# This way, whenever the symbol is accessed for the first time, the path is loaded (using require).
# In this snippet, autoloads are being set for :sym0 to path 'str0' and for :sym1 to path 'str1'
# This permits us to lazily load dependent files, and only load the ones used currently.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

autoload(:sym0, "str0")
autoload(:sym1, "str1")

# 279.
#
# Title: Array element indexed at an expression
# Category: [ Standard lib ]
#
# Description:
# Get the element from array 'var0' which is at an index obtained by an expression.
# The expression works by multiplying 'var1' with a number (0) and adding another
# number (1) to the product.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[(var1 * 0) + 1]

# 280.
#
# Title: Hash element access
# Category: [ Standard lib ]
#
# Description:
# Get the element keyed at 'var2.name' from hash 'var1' and assign it to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[var2.name]

# 281.
#
# Title: Instantiate new object
# Category: [ Standard lib ]
#
# Description:
# Instantiate a new object of the current class (self.class) and assign it to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = self.class.new

# 282.
#
# Title: Place item on top in acts_as_list
# Category: [ External lib ]
#
# Description:
# This snippet is trying to set the current item's position as the top item in the list,
# by changing (reducing) the positions of higher items and setting current items's position.
# All of this happens within a database transaction.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

acts_as_list_class.transaction do
  increment_positions_on_higher_items
  assume_top_position
end

# 283.
#
# Title: Options hash value as string
# Category: [ Standard lib ]
#
# Description:
# Get the value at :sym0 in options hash and convert it to string
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

options[:sym0].to_s

# 284.
#
# Title: raise ArgumentError with custom message
# Category: [ Standard lib ]
#
# Description:
# raise the ArgumentError with a message that is obtained by prefixing 'str0'
# with string version of 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

raise(ArgumentError.new("str0#{var0}"))

# 285.
#
# Title: Insert file-path in the beginning of array
# Category: [ Standard lib ]
#
# Description:
# Add a file path to the beginning or array 'var0'. The file path is constructed
# by joining the directory name of 'str0' with 'str1' and then expanding it.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.unshift(File.expand_path(File.dirname("str0") + "str1"))

# 286.
#
# Title: Array of some hash values
# Category: [ Standard lib ]
#
# Description:
# Gives the elements at keys 'var1' and 'var2' in hash 'var0' as an array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

[var0[var1], var0[var2]]

# 287.
#
# Title: Boolean AND comparison
# Category: [ Standard lib ]
#
# Description:
# Checks if Boolean AND (&) of 'var0' with a number (0) is equal to the number (0).
# Always true in this case.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 & 0) == 0

# 288.
#
# Title: List of some values from array
# Category: [ Standard lib ]
#
# Description:
# Gives the elements at given indexes (0 and 1 here) in array 'var0' as an array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

[var0[0], var0[1]]

# 289.
#
# Title: Key value pair from params hash
# Category: [ Standard lib ]
#
# Description:
# Gives a hash with one key-value pair, where the key :sym0 points to the value
# at :sym1 in the 'params' hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

:sym0 => params[:sym1]

# 290.
#
# Title: Comparison on length
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' is greater than the length of 'var1'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 >= var1.length

# 291.
#
# Title: block_given? check
# Category: [ Standard lib ]
#
# Description:
# Checks if no block is given to the current method
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!block_given?

# 292.
#
# Title: display warning
# Category: [ Standard lib ]
#
# Description:
# Releases a warning message on STDERR. The message is constructed by interpolation the
# inspect (human readable form) of 'var0' with 'str0' and 'str1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

warn("str0#{var0.inspect}str1")

# 293.
#
# Title: Delete element from hash
# Category: [ Standard lib ]
#
# Description:
# Deletes the element 'var2' from the hash/array present at the key 'var1' of hash 'var0'
# The deleted element is the return value of the expression
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1].delete(var2)

# 294.
#
# Title: Split string and convert parts to integers
# Category: [ Standard lib ]
#
# Description:
# Splits 'var0' at "str0", converts each part to the integer equivalent,
# and returns the integer array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.split("str0").map do |var1|
  var1.to_i
end

# 295.
#
# Title: errors on ActiveRecord object
# Category: [ External lib ]
#
# Description:
# Checks if there are no errors associated with the object 'var0'
# The object var0 here may be an ActiveRecord which has an associated error object
# that holds the related errors. The check is generally performed after a valid? call.
# It is empty if there are no validation errors on the object.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.errors.empty?

# 296.
#
# Title: Exception backtrace as a string
# Category: [ Standard lib ]
#
# Description:
# Joins the backtrace associated with exception object 'var0' using 'str0' as
# the separator. If the backtrace is nil, it returns an empty string
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0.backtrace) || ([])).join("str0")

# 297.
#
# Title: Check presence of hash elements
# Category: [ Standard lib ]
#
# Description:
# Checks if the hash 'var0' contains elements for keys 'str0' and 'str1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0["str0"]) && (var0["str1"]))

# 298.
#
# Title: Chained push using << operator
# Category: [ Standard lib ]
#
# Description:
# Pushes 'str0' to 'var0', and then pushes a stringified 'var1' to the result.
# var0 may be an array or a string.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 << "str0") << var1.to_s

# 299.
#
# Title: Not-empty check
# Category: [ Standard lib ]
#
# Description:
# Checks if the current object is (not) empty?
# It will be empty if its an empty array, hash or string
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!empty?

# 300.
#
# Title: Comparison on length
# Category: [ Standard lib ]
#
# Description:
# Checks if the length of 'var0' does not equal 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.length != var1

# 301.
#
# Title: type check for Hash/Array
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' is an instance of either an Array or a Hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0.is_a?(Hash)) || (var0.is_a?(Array)))

# 302.
#
# Title: Process status check
# Category: [ Standard lib ]
#
# Description:
# Checks if the status of a process 'var0' is (not) success.
# Generally used with $?, that holds the value of the recently executed child process
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.success?

# 303.
#
# Title: Binding object
# Category: [ Standard lib ]
#
# Description:
# Passes the current context as a Binding object to the 'result' method.
# The binding can be applied to arbitrary ruby code being eval-ed, such that
# all the local/instance variables of the context will be available to the code.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.result(binding)

# 304.
#
# Title: Hash content check
# Category: [ Standard lib ]
#
# Description:
# Checks if the hash 'var0' (doesn't) contain the key 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.key?(var1)

# 305.
#
# Title: Rails Generator templates
# Category: [ External lib ]
#
# Description:
# Part of Rails Generators:
# Generates a template using 'str0' as the source, and the destination is obtained
# by joining 'str1' with the class_path and the file_name suffixed with 'str2'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method
  template("str0", File.join("str1", class_path, "#{file_name}str2"))
end

# 306.
#
# Title: Containing directory's name
# Category: [ Standard lib ]
#
# Description:
# Gets the name of the containing directory for the file 'var0'.
# First gets the directory name of the file path 'var0', and then picks
# its last part using File.basename. This last part is the containing direcory's name.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.basename(File.dirname(var0))

# 307.
#
# Title: Update position_column
# Category: [ External lib ]
#
# Description:
# Updates the position_column attribute with the new value. The new value is
# obtained by reducing a number (0 here) from the current position_column
# (converted to integer). Most probably a part of acts_as_list gem.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

update_attribute(position_column, self.send(position_column).to_i - 0)

# 308.
#
# Title: Append to string
# Category: [ Standard lib ]
#
# Description:
# Obtains a string by interpolating 'name' within 'str0' and 'str1' and then
# append it to string/array 'var0'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << "str0#{name}str1"

# 309.
#
# Title: nil check
# Category: [ Standard lib ]
#
# Description:
# Checks if either of 'var0' and 'var1' is nil.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# var0.nil? || var1.nil?

((var0 == nil) || (var1 == nil))

# 310.
#
# Title: Instantiate object
# Category: [ Standard lib ]
#
# Description:
# Creates an instance of the class of 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.class.new

# 311.
#
# Title: Pattern match for array element
# Category: [ Standard lib ]
#
# Description:
# Checks if an element of array 'var0' (at index 0) matches the pattern /str0/
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0] =~ /str0/

# 312.
#
# Title: Type check on hash element
# Category: [ Standard lib ]
#
# Description:
# Checks if the element at key :sym0 in hash 'var0' is the instance of an Array
# or a subclass
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0].kind_of?(Array)

# 313.
#
# Title: Get class's logger
# Category: [ Standard lib ]
#
# Description:
# Gives the logger object associated with the class of the current object
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

self.class.logger

# 314.
#
# Title: Last element of array within hash
# Category: [ Standard lib ]
#
# Description:
# Gets the last element of the array present at key 'var1' in the hash 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1].last

# 315.
#
# Title: Check blank?
# Category: [ External lib ]
#
# Description:
# Checks if the name property on var0 is blank?.
# It is blank if its nil/false or an empty array/hash/string.
# Needs active_support/core_ext
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.name.blank?

# 316.
#
# Title: Raise NotImplementedError
# Category: [ Standard lib ]
#
# Description:
# Raise the NotImplementedError
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# raise NotImplementedError

raise(NotImplementedError.new)

# 317.
#
# Title: Raise exception with message
# Category: [ Standard lib ]
#
# Description:
# Raise the NotImplementedError using "str0" as the error message
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# raise NotImplementedError, "str0"

raise(NotImplementedError.new("str0"))

# 318.
#
# Title: Assign from Hash
# Category: [ Standard lib ]
#
# Description:
# Assign 'var0' and 'var2' values from hash 'var1' at keys :sym0 and :sym1 respectively
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[:sym0]
var2 = var1[:sym1]

# 319.
#
# Title: Compare hash value
# Category: [ Standard lib ]
#
# Description:
# Checks if the value at "str0" in hash var0 does not equal "str1".
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0["str0"] != "str1"

# 320.
#
# Title: Unpack, join and uppercase
# Category: [ Standard lib ]
#
# Description: TODO- details of unpack
# Unpack the value in $1 (recent capture from regular expression match)
# using a template obtained by repeating "str1" $.size times. The unpacked array
# is then joined using "str0" and converted to upcase. Then "str0" is added to
# the beginning of the uppercase string.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0" + $1.unpack("str1" * $1.size).join("str0").upcase

# 321.
#
# Title: Set ENV and load Ruby scripts
# Category: [ External lib ]
#
# Description:
# Loads (using require) the ruby script 'str0'. Then sets the ENV hash at 'str1' with the
# expanded path of 'str2' (relative to 'str3'). Doesn't set ENV if it already contains 'str1'.
# Then loads the script 'str4' if the File in ENV['str1'] actually exists.
# Perhaps part of the load sequence of some library.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

require("str0")
ENV["str1"] ||= File.expand_path("str2", "str3")
if File.exists?(ENV["str1"])
  require("str4")
end

# 322.
#
# Title: Stringify identifier
# Category: [ Standard lib ]
#
# Description:TODO- identifier reference?
# Gets the identifier property of var0 and stringifies it.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.identifier.to_s

# 323.
#
# Title: String construction using array elements
# Category: [ Standard lib ]
#
# Description:
# Constructs a string by interpolating elements from array 'var0' (at index 0 and 1 here),
# by separating them with 'str0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"#{var0[0]}str0#{var0[1]}"

# 324.
#
# Title: Access hash with lowercased key
# Category: [ Standard lib ]
#
# Description:
# Gets the value from the hash 'var1' referenced by the key 'var2' (lower-cased).
# Then assigns the result to 'var0'.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[var2.downcase]

# 325.
#
# Title: Comparison on integer-ified variable
# Category: [ Standard lib ]
#
# Description:
# Checks if the integer converted version of 'var0' doesn't equal a given number (0 here).
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_i != 0

# 326.
#
# Title: exit current ruby script
# Category: [ Standard lib ]
#
# Description:
# Prints 'var0' to standard output and exits the current ruby script.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

puts(var0)
exit

# 327.
#
# Title: Open file with given modes
# Category: [ Standard lib ]
#
# Description:
# Opens the IO stream/File 'var1' in the append mode. The mode here is
# generated by combination (binary OR) of three modes - File::WRONLY,
# File::APPEND and File::CREAT, which means the file will be opened for write only,
# starting at the end of the file, and the file will be created if it doesn't exist.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# var0 = open(var1, 'a')

var0 = open(var1, (File::WRONLY | File::APPEND) | File::CREAT)

# 328.
#
# Title: Check value property for nil
# Category: [ Standard lib ]
#
# Description:
# Checks if the value property of 'var0' is nil.
# The 'var0' here may be a Thread object, in which case the value method will
# wait for the thread execution to complete, and then contain its return value.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.value.nil?

# 329.
#
# Title: Regex#quote usage
# Category: [ Standard lib ]
#
# Description:
# Substitute the first occurance of a pattern in 'var0' with 'str2'.
# The pattern is obtained by 'quoting' (Regexp.quote) 'var1' and surrounding it
# with 'str0' and 'str1'. Quoting will escape any charaters within var1 that may
# have special meaning in regular expressions, like ?, *, . etc
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.sub(/str0#{Regexp.quote(var1)}str1/, "str2")

# 330.
#
# Title: Split and join sub-parts
# Category: [ Standard lib ]
#
# Description:
# Splits 'var0' at 'str0' and joins its sub-array using 'str0' again.
# The subarray contains elements between two indexes (0 through 1 here).
# Returns the joined string.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.split("str0")[0..1].join("str0")

# 331.
#
# Title: Subtract integer-ified values
# Category: [ Standard lib ]
#
# Description:
# Subtracts integer converted version of 'var1' from 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 - var1.to_i

# 332.
#
# Title: Compare variables on size
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' is less than or equal to the size of 'var1'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 <= var1.size

# 333.
#
# Title: Compare variables on length
# Category: [ Standard lib ]
#
# Description:
# Checks if the length of 'var0' is less than or equal to 'var1'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.length <= var1

# 334.
#
# Title: Check empty-ness of attributes
# Category: [ External lib ]
#
# Description:
# Checks if the attributes property of 'var0' gives an empty hash.
# var0 here may be an ActiveRecord object and the 'attributes' method
# might give a hash of its column-names with values.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.attributes.empty?

# 335.
#
# Title: Close IO object
# Category: [ Standard lib ]
#
# Description:
# Closes the IO object 'var0' if it exists and is not already closed
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method
  if ((var0) && (!var0.closed?))
    var0.close
  end
end

# 336.
#
# Title: Substring of name property
# Category: [ Standard lib ]
#
# Description:
# From the 'name' property of 'var0', this gets a substring at a certain index
# (0 here) and of a certain length (1 here).
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.name[0, 1]

# 337.
#
# Title: Current Epoch time as string
# Category: [ Standard lib ]
#
# Description:
# Gives the stringified version of the current Epoch time.
# Epoch time is the number of seconds since 1 Jan 1970, 00:00:00
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Time.now.to_i.to_s

# 338.
#
# Title: Check presence in hash
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' exists (not nil) and that the value at :sym0 in hash 'var1' is not false
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0) && (var1[:sym0] != false))

# 339.
#
# Title: Sliced string as symbol
# Category: [ Standard lib ]
#
# Description:
# Slices the string 'var0' (index 0 through to 1) and converts it to a symbol
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0..1].to_sym

# 340.
#
# Title: Formatted string
# Category: [ Standard lib ]
#
# Description:
# Formats value 'var1' using the format-string "str0", and pushes it to 'var0'
# Formatting with sprintf happens by applying format-specifiers from the first argument,
# to the value in the second. Eg -
#  sprintf("%.2f", 1234) # => 1234.00
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << sprintf("str0", var1)

# 341.
#
# Title: Formatting each byte in a string
# Category: [ Standard lib ]
#
# Description:
# Iterates over every byte in 'var0', and formats it using the format-string 'str0'.
# The formatted string is then pushed to 'var2' in each iteration.
# This may be used to get, for example, a hexadecimal representation of each byte
# in the string. The format string in then would be "%x".
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.each_byte do |var1|
  var2 << sprintf("str0", var1)
end

# 342.
#
# Title: Hash access using string and symbol
# Category: [ Standard lib ]
#
# Description:
# Gives the value at 'str0' if it is present, and if not, the value at :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0["str0"]) || (var0[:sym0]))

# 343.
#
# Title: Parse Date in EU/US/ISO formats
# Category: [ Standard lib ]
#
# Description:
# Parses the string 'var0' as a date in EU, US and ISO formats. The precendence is
# EU-format > US-format > ISO. 'var1' is used to specify the parse format.
# These methods were used in Ruby 1.8 and are depracated 1.9 onwards.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((((_parse_eu(var0, var1)) || (_parse_us(var0, var1)))) || (_parse_iso(var0, var1)))

# 344.
#
# Title: Comparison on sliced string
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' exists and a string sliced from it (at index 0, length 1) equals 'str0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0) && (var0[0, 1] == "str0"))

# 345.
#
# Title: Comparison on lowercased string
# Category: [ Standard lib ]
#
# Description:
# Checks if the lowercased version of 'var0' equals 'str0'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.downcase == "str0"

# 346.
#
# Title: Push matched value to array
# Category: [ Standard lib ]
#
# Description: TODO- matched reference
# Pushes the value of 'var1.matched' to the array/string 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << var1.matched

# 347.
#
# Title: size as float
# Category: [ Standard lib ]
#
# Description:
# Gives the size of 'var0' expressed at a float.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size.to_f

# 348.
#
# Title: Match regex with string
# Category: [ Standard lib ]
#
# Description:
# Matches regular expression /str0/ with 'var0', and gives the first matched value.
# Fails with a NoMethodError exception if there is no match.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

/str0/.match(var0)[0]

# 349.
#
# Title: Compare inequality with symbols
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' does not equal any of the symbols :sym1 and :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0 != :sym0) && (var0 != :sym1))

# 350.
#
# Title: Value from config hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value of :sym0 from config hash
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config[:sym0]

# 351.
#
# Title: nil check on hash element
# Category: [ Standard lib ]
#
# Description:
# Checks if the value at :sym0 in the hash 'var0' is nil
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0].nil?

# 352.
#
# Title: Date parsing in EU and US formats
# Category: [ External lib ]
#
# Description:
# Parses the string 'var0' as a date in EU and US formats, in that order of precedence.
# 'var1' is used to specify the parse format.
# These methods were used in Ruby 1.8 and are deprecated 1.9 onwards
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((_parse_eu(var0, var1)) || (_parse_us(var0, var1)))

# 353.
#
# Title: Default value from Hash as a block
# Category: [ Standard lib ]
#
# Description:
# If var0 doesn't exist, it is assigned a new hash.
# The new hash is created such that whenever it is accessed with a non-existing
# key, it executes the given block to get the value. The block here sets the
# value at the key to an empty array, so for any non-existing keys,
# the value returned is a newly instantiated empty array.
# This differs from Hash.new([]) because in the latter it returns the *same*
# empty array everytime, not a newly created one
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 ||= Hash.new do |var1, var2|
  var1[var2] = []
end

# 354.
#
# Title: Add directory to array
# Category: [ Standard lib ]
#
# Description:
# If 'var0' is a directory, or a symlink to a directory, then add it to the beginning
# of the array 'var1'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if File.directory?(var0)
  var1.unshift(var0)
end

# 355.
#
# Title: strftime on Time
# Category: [ Standard lib ]
#
# Description:
# Prints the current time in a format specified in 'var0'
# eg - Time.now.strftime("%I:%M%p") #=> 08:37AM
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Time.now.strftime(var0)

# 356.
#
# Title: Date parsing
# Category: [ External lib ]
#
# Description:
# Perhaps a part of the home_run date formatting library, invoked in the _parse_us method,
# tries to parse a given string as date in the US format.
# This statment occurs right after a regular expression match of the given string, so
#  var0 specifies the format,
#  $4 gets the year,
#  $1.downcase gets the month as string, and Format::ABBR_MONTHS hash gets a corresponding number
#  $2 gets the date
#  The Last argument is true/false depending on whether $3 has first charcter 'b'
#   $3 is for the 'bce' part in dates like 'Jan 12 bce 2009'
#
# The arguments are parsed to the se3 method that generates the Date object.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

s3e(var0, $4, Format::ABBR_MONTHS[$1.downcase], $2, (($3) && ($3[0, 1].downcase == "str0")))

# 357.
#
# Title: Boolean >> and &
# Category: [ Standard lib ]
#
# Description:
# Boolean right shift 'var2' by a number (0) and assign it to 'var0', boolean AND 'var2'
# with another number (1) and assign it to 'var1'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0, var1 = var2 >> 0, var2 & 1

# 358.
#
# Title: String multiplication and subtraction
# Category: [ Standard lib ]
#
# Description:
# Repeats the string "str0" 'var0' times to get a new string,
# and then tries to subtract 'var1' from it.
# Will fail with NoMethodError as '-' is not defined for strings.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0" * var0 - var1

# 359.
#
# Title: Rails find using block
# Category: [ External lib ]
#
# Description:
# When invoked, 'method' finds an object in a collection of ActiveRecord objects 'var1'
# using the block. The block checks if the name property of compared object equals 'var2'.
# Part of Ruby on Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method(var0)
  var1.find do |var2|
    var2.name == var0
  end
end

# 360.
#
# Title: Regex match
# Category: [ Standard lib ]
#
# Description:
# Checks if var0 does (not) match with the regular expression /str0/
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.match(/str0/)

# 361.
#
# Title: Integer ordinal
# Category: [ Standard lib ]
#
# Description:
# Gets the integer ordinal for the character at the index 'var2' in string 'var1'.
# Then assigns it to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1[var2].ord

# 362.
#
# Title: Format using % operator
# Category: [ Standard lib ]
#
# Description:
# Applies "str0" as the format specifier (using % operator) to format
# the value at :sym0 in hash 'var0'.
# eg-
#    var0[:sym0]=100
#   "%.2f".%var0[:sym0]   #=> 100.00
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0".%(var0[:sym0])

# 363.
#
# Title: include check on array/hash
# Category: [ Standard lib ]
#
# Description:
# Checks if the array 'var0' includes the stringified version of 'var1'.
# If 'var0' is a hash, it checks if stringified 'var1' matches one of the keys.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.include?(var1.to_s)

# 364.
#
# Title: Rails filtered paramters
# Category: [ External lib ]
#
# Description:
# In Rails, this is a list of parameters to be filtered in logs.
# Generally contains password and similar sensitive parameters.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

config.filter_parameters

# 365.
#
# Title: Stringify elements of a flattened array
# Category: [ Standard lib ]
#
# Description:
# Flatten the array 'var0' and then build another array from it that contains stringified
# version of each of its elements. Flatten turns the array into a one-dimensional array.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var0.flatten.map(&:to_s)

var0.flatten.map do |var1|
  var1.to_s
end

# 366.
#
# Title: Rails respond as html
# Category: [ External lib ]
#
# Description:
# Responds to an http request when the response expected is in html.
# The response is built as specified in the hash (:sym0 => "str0"), eg -
# it could render a file as:
#  render({:file => "template-file-name"})
# Part of ruby on rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.html do
  render({:sym0 => "str0"})
end

# 367.
#
# Title: sessions hash
# Category: [ External lib ]
#
# Description:
# Gets a particular value (keyed at 'var0') from the sessions hash.
# Part of Rails.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

session[var0]

# 368.
#
# Title: puts and exit
# Category: [ Standard lib ]
#
# Description:
# Prints out a string composed by joining 'str0' and 'var1' to the file (handler) 'var0',
# and then exit the current ruby script with the code 0.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.puts("str0#{var1}")
exit(0)

# 369.
#
# Title: Divide size by a number
# Category: [ Standard lib ]
#
# Description:
# Divide the size of 'var1' by a number (0 here) and assign the result to 'var0'.
# In this case it causes a ZeroDivisionError.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1.size / 0

# 370.
#
# Title: require ruby scripts
# Category: [ Standard lib ]
#
# Description:
# Load (require) ruby scripts by the names 'str0', 'str1', 'str2', 'str3' and 'str4'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

require("str0")
require("str1")
require("str2")
require("str3")
require("str4")

# 371.
#
# Title: id as string
# Category: [ Standard lib ]
#
# Description:
# Gets id as a string.
# id may be a local variable holding a number or a method in the current context
# that gives a number
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

id.to_s

# 372.
#
# Title: New Net::HTTP request
# Category: [ Standard lib ]
#
# Description:
# Creates a new HTTP request object, without opening the TCP connection yet.
# Passed arguments are hostname and port, which come as methods on 'var0' object.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Net::HTTP.new(var0.host, var0.port)

# 373.
#
# Title: Equality check on lowercased slice of regex capture
# Category: [ Standard lib ]
#
# Description:
# Checks if the substring sliced (at index 0, length 1) from a string,
# when lowercased, is equal to the string 'str0'. The string here is the third capture
# from the last regular expression match.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

$3[0, 1].downcase == "str0"

# 374.
#
# Title: request environment
# Category: [ External lib ]
#
# Description:
# Gets the request environment object for the current HTTP request.
# Part of Rails.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

request.env

# 375.
#
# Title: values_at from array
# Category: [ Standard lib ]
#
# Description:
# Gets the values from the array 'var0' at the indexes mentioned in the list 'var1'
# and compact the result by removing nil values. If 'var0' is a hash, then values with
# keys mentioned in 'var1' are fetched and the result is compacted.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.values_at(*var1).compact

# 376.
#
# Title: Change file permissions
# Category: [ Standard lib ]
#
# Description:
# Changes the permissions for file in 'var0.path' by using the
# bit pattern in first argument (0 here)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.chmod(0, var0.path)

# 377.
#
# Title: camelize and constantize
# Category: [ External lib ]
#
# Description:
# Converts the string 'var0' to camel-case and then finds a constant by that name.
# The camelize method will capitalize each part of the string separated with underscores,
# and wil turn '/' to '::'.
# eg -
#  'active_support/core_ext'.camelize # => ActiveSupport::CoreExt
# Part of Rails active_support
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.camelize.constantize

# 378.
#
# Title: Values from hash listed as array
# Category: [ Standard lib ]
#
# Description:
# Pick values at :sym0, :sym1, :sym2 and :sym3 frrom the hash 'var0' and
# returns them as an array
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

[var0[:sym0], var0[:sym1], var0[:sym2], var0[:sym3]]

# 379.
#
# Title: Hash key check before lookup
# Category: [ Data or Control Flow ]
#
# Description:
# If the hash var0 has a key 'var1', then return the value at that key.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.has_key?(var1)
  return(var0[var1])
end

# 380.
#
# Title: true check on element in options hash
# Category: [ Standard lib ]
#
# Description:
# Checks if the value at :sym0 in options hash is true.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

options[:sym0] == true

# 381.
#
# Title: Time difference
# Category: [ Standard lib ]
#
# Description:
# Reduces 'var1' seconds from current time, and assigns to 'var0'
#  If 'var1' is another Time object, then the subtraction gives the difference in the times.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = Time.now - var1

# 382.
#
# Title: Last of sorted keys of a hash
# Category: [ Standard lib ]
#
# Description:
# Sort the keys of a hash 'var0', and get the last one from the sorted list.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.keys.sort.last

# 383.
#
# Title: Change file permissions within database transaction
# Category: [ Standard lib ]
#
# Description:
# Tries to change the mode on a file ('var1.path') to the given mode (0 here) within
# a database transaction. The transaction is performed on ActiveRecord model class 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.transaction do |var1|
  File.chmod(0, var1.path)
end

# 384.
#
# Title: Set full backtrace
# Category: [ Standard lib ]
#
# Description:
# Sets the backtrace for the exception 'var0' using the sum of 'var1' and 'caller'.
# 'var1' here may be holding the name of the current method, while caller gets
# an array of the current execution stack. So their summation can give a full trace complete
# with the current method's name.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.set_backtrace(var1 + caller)

# 385.
#
# Title: length of hash element
# Category: [ Standard lib ]
#
# Description:
# Gets the length of the value at key 'str0' in hash 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0["str0"].length

# 386.
#
# Title: Multiply and add numbers/strings
# Category: [ Standard lib ]
#
# Description:
# Multiply 'var0' with a number (0 here) and then add 'var1' to it.
# If var0 and var1 are strings, it is repeated as many times as the number
# to get a new string which is then concatenated with var1
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 * 0) + var1

# 387.
#
# Title: Prefix hash value with string
# Category: [ Standard lib ]
#
# Description:
# Prefix 'str0' to the stringified value at key :sym0 in the options hash.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"str0#{options[:sym0]}"

# 388.
#
# Title: Instantiate using new with arguments
# Category: [ Standard lib ]
#
# Description:
# Instantiate an object of the current class by passing +d as an argument.
# The +d here may be a value being converted to its positive equivalent.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

self.class.new(+d)

# 389.
#
# Title: Value from attributes hash
# Category: [ External lib ]
#
# Description:
# Gets the value at key 'var0' from the attributes hash. The attributes hash is
# a property of the ActiveRecord objects, so this snippet may likely be used within
# an ActiveRecord model class.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

attributes[var0]

# 390.
#
# Title: Equality check on value property
# Category: [ Standard lib ]
#
# Description:
# Checks if the value property of 'var0' is equal to another variable named 'value'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.value == value

# 391.
#
# Title: Integer-ify and multiply
# Category: [ Standard lib ]
#
# Description:
# Convert $2 to an integer and then multiply it with a number (0 here). $2 holds the
# second capture from the last regular expression match.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

$2.to_i * 0

# 392.
#
# Title: Difference of lengths
# Category: [ Standard lib ]
#
# Description:
# Subtract the length of 'var1' from the length of 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.length - var1.length

# 393.
#
# Title: Negate variable and add number
# Category: [ Data or Control Flow ]
#
# Description:
# If 'var0' exists (not nil or false), add the negative equivalent of 'var1'
# to a number (0 here) and then assign it back to 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0
  var1 = -var1 + 0
end

# 394.
#
# Title: Marshalling and unmarshalling an object
# Category: [ Standard lib ]
#
# Description:
# Marshal dump the object 'var0' and then Marshal load it. Gives back the same object.
# Marshalling converts a ruby object into a byte stream which can be stored
# and then loaded outside of the current script. The dump method performs the conversion
# (serializing), where it converts all its descendent objects too. The load method
# does the deserializing.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Marshal.load(Marshal.dump(var0))

# 395.
#
# Title: Full path of a directory name
# Category: [ Standard lib ]
#
# Description:
# Expand and get the full path for the dirirectory name of 'str0'
# File.directory gives the directory name part of 'str0', after removing the base file name,
# and can be a relative path, eg ../nginx/sites-available
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.expand_path(File.dirname("str0"))

# 396.
#
# Title: Equality check on variable minus number
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' is equal to the difference of 'var1' and a number (0 here)
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 == var1 - 0

# 397.
#
# Title: nil check on hash element
# Category: [ Standard lib ]
#
# Description:
# Checks if the value at key 'var1' in hash 'var0' is non nil.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0[var1].nil?

# 398.
#
# Title: Summation of variables and a number
# Category: [ Standard lib ]
#
# Description:
# Adds the values of variables 'var0' and 'var1' and a number (0 here)
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 + var1) + 0

# 399.
#
# Title: Raise exception with custom message
# Category: [ Standard lib ]
#
# Description:
# Raises the ArgumentError with an exception message composed by
# interpolating the length of 'var0' between strings 'str0' and 'str1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

raise(ArgumentError, "str0#{var0.length}str1")

# 400.
#
# Title: Subarray at given index and of given size
# Category: [ Standard lib ]
#
# Description:
# Get a subarray from array 'var0' which consists of consecutive elements
# starting at the given index (0 here) and is of size 'var1'-1.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0, var1 - 1]

# 401.
#
# Title: Subarray using range
# Category: [ Standard lib ]
#
# Description:
# Get a subarray from array 'var0', which consisits of consecutive elements between
# indexes 0 (or a given number) and var1-1. Since it uses the range operator (..) for
# slicing, it includes the element on index var-1 too, and therefore gets a longer
# subarray than var0[0, var1-1]
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var0[0..var1 - 1]

# 402.
#
# Title: String constructed using position_column
# Category: [ External lib ]
#
# Description:
# Constructs a string by interpolating strings "str0" and "str1" after stringified
# versions of position_column. This may be used as a query string in acts_as_list gem.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"#{position_column}str0#{position_column}str1"

# 403.
#
# Title: Set instance variables externally
# Category: [ Standard lib ]
#
# Description:
# Set the instance variables on the current object using the key-value pairs
# from the hash 'var0'. The instance_varaible_set method is called with the two arguments,
# the first one being a symbol for the varaible's name, and the second is the value.
# Instance variable names start with an '@' symbol, so 'str0' here may be '@'.
# If the variable didn't exist yet, it is created.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.each do |var1, var2|
  instance_variable_set("str0#{var1}", var2)
end

# 404.
#
# Title: Add size to variable
# Category: [ Standard lib ]
#
# Description:
# Add the size of 'var1' to 'var0'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 + var1.size

# 405.
#
# Title: Compare variable lengths
# Category: [ Standard lib ]
#
# Description:
# Compare if the length of 'var0' is less than the length of 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.length < var1.length

# 406.
#
# Title: Rails update_attribute
# Category: [ External lib ]
#
# Description:
# Changes the position_column attribute of the current object to a number (0 here)
# It calls the ActiveRecord update_attribute method, which changes a single attribute
# and saves the change, without performing any validations.
# Ruby on Rails related.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

update_attribute(position_column, 0)

# 407.
#
# Title: Array push using <<
# Category: [ Standard lib ]
#
# Description:
# Push an element of array 'var1' to the array 'var0'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << var1[0]

# 408.
#
# Title: Conditional next
# Category: [ Standard lib ]
#
# Description:
# Skip and execute the next iteration in a loop unless 'var0' exists - it is neither
# nil nor empty
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

unless ((var0) && (!var0.empty?))
  next
end

# 409.
#
# Title: Join and push to array
# Category: [ Standard lib ]
#
# Description:
# Join the array 'var1' using 'str0' as separator and push it to the array 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << var1.join("str0")

# 410.
#
# Title: update multiple database records in a single step
# Category: [ External lib ]
#
# Description:
# Runs the 'update_all' method on the class represented by 'acts_as_list_class',
# to update all the records filtered by scope conditions (in second argument).
# by setting the 'position_column' to a new value determined by 'str0' and 'str1'.
# For example, this could be something like:
#  User.update_all("#{position_column}=#{position_column}+1", "where priority like 'high' AND position_column >= 1")
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

acts_as_list_class.update_all("#{position_column}str0#{position_column}str1", "#{scope_condition}str2#{position_column}str3#{var0}")

# 411.
#
# Title: Push hash element to array
# Category: [ Standard lib ]
#
# Description:
# Push the element at "str0" in hash 'var1' to another array/string 'var0'
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 << var1["str0"]

# 412.
#
# Title: Duplicate array
# Category: [ Standard lib ]
#
# Description:
# Iterate over key value pairs in hash 'var0', and build another hash 'var3'
# using the same key-value pairs.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# => var3 = var0.dup

var0.each do |var1, var2|
  var3[var1] = var2
end

# 413.
#
# Title: Iterate over child objects
# Category: [ External lib ]
#
# Description:
# As a part of Pathname (or similar) library, this gives an enumerator that can
# iterate over the children of a directory 'var0' - files and subdirectories.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.children.each

# 414.
#
# Title: bytesize as string
# Category: [ Standard lib ]
#
# Description:
# Gets the length of string 'var0' in number of bytes, and gives its stringified version
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.bytesize.to_s

# 415.
#
# Title: Push to string conditionally
# Category: [ Data or Control Flow ]
#
# Description:
# Push the string 'str0' to 'var1' and then 'var0' to it, unless 'var0' is empty
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

unless var0.empty?
  (var1 << "str0") << var0
end

# 416.
#
# Title: Element from nested hash
# Category: [ Standard lib ]
#
# Description:
# Gets an element from a nested hash, at the key ["str0", "str1"]
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0["str0"]["str1"]

# 417.
#
# Title: Comparisons composed with &&
# Category: [ Standard lib ]
#
# Description:
# Checks if both 'var0' and 'var1' are greater than 0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0 > 0) && (var1 > 0))

# 418.
#
# Title: String addition
# Category: [ Standard lib ]
#
# Description:
# Concatenates string "str0" with the name property of 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# "str0#{var0.name}"

"str0" + var0.name

# 419.
#
# Title: unpack and pick first part
# Category: [ Standard lib ]
#
# Description:
# Unpack 'var0' using the format "str0" and get the first element from the result.
# The unpack method decodes the given string according to the format and gives an array.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.unpack("str0").first

# 420.
#
# Title: class name
# Category: [ Standard lib ]
#
# Description:
# Gets the class name of the current object as a string and assigns it to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = self.class.name

# 421.
#
# Title: Size of first element
# Category: [ Standard lib ]
#
# Description:
# Gets the size of the first element from the array 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.first.size

# 422.
#
# Title: Case insensitive regex match
# Category: [ Standard lib ]
#
# Description:
# Checks if the stringified version of var0 matches with the regular expression /str0/
# The opition i on the regex makes sure the match performed is case-insensitive.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_s =~ /str0/i

# 423.
#
# Title: Print multiplied string
# Category: [ Standard lib ]
#
# Description:
# Prints on standard output, a string obtained by multiplying 'str0' with a number.
# String multiplication with a number gives a new string which has 'str0' repeated
# as many times as the number.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

puts("str0" * 0)

# 424.
#
# Title: Integer-ify and assign to hash
# Category: [ Data or Control Flow ]
#
# Description:
# If var0 exisits (non nil), this converts it to an integer and assigns it to the hash
# 'var1' at key :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0
  var1[:sym0] = var0.to_i
end

# 425.
#
# Title: Full path of a directory name
# Category: [ Standard lib ]
#
# Description:
# Expand and get the full path for the directory of 'str0'.
# File.directory gives the directory name part of 'str0',
# after removing the base file name, and can be a relative path,
# eg- ../nginx/sites-available
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = File.expand_path(File.dirname("str0"))

# 426.
#
# Title: Force encoding
# Category: [ Standard lib ]
#
# Description:
# Force the default external encoding (which is generally utf-8) on "var0".
# The force_encoding method keeps the byte representation of the string and
# changes the characters to the required encoding.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.force_encoding(Encoding.default_external)

# 427.
#
# Title: Substring addition
# Category: [ Standard lib ]
#
# Description:
# Gets a substring from 'var0' (starting at index 0, of length 1), and
# concatenate it with "str0"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0, 1] + "str0"

# 428.
#
# Title: Convert to array and sort
# Category: [ Standard lib ]
#
# Description:
# Convert 'var0' to an array and then sort it.
# var0 may be an Enumerable/Time/MatchData/nil etc to respond to 'to_a'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_a.sort

# 429.
#
# Title: sessions hash
# Category: [ External lib  ]
#
# Description:
# Gets a particular value (keyed at :sym0) from the sessions hash.
# May be a part of Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

session[:sym0]

# 430.
#
# Title: Class similarity check
# Category: [ Standard lib ]
#
# Description:
# Checks if the class of current object is the same as the class of 'var0',
# or the classes are part of the same class hierarchy.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# var0.is_a? self.class

self.class === var0

# 431.
#
# Title: Stringified element of array
# Category: [ Standard lib ]
#
# Description:
# Gives the stringified version of an element (at index 0 here) of the array 'var0'.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0].to_s

# 432.
#
# Title: raise exception with custom message
# Category: [ Standard lib ]
#
# Description:
# Raise the RuntimeError with a message. The message string here is composed
# by interpolating the inspect (human readable form) of 'var0' within strings
# "str0" and "str1"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

raise("str0#{var0.inspect}str1")

# 433.
#
# Title: session cookies
# Category: [  External lib ]
#
# Description:
# Gets a particular cookie from a hash of cookies obtained from object 'var0'.
# var0 may be the session object.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.cookies[var1]

# 434.
#
# Title: Type check on Array element
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' is not an instance of Array.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.kind_of?(Array)

# 435.
#
# Title: Join unique elements of Array
# Category: [ Standard lib ]
#
# Description:
# Gets the unique elements from array 'var0' and join the elements
# using "str0" as separator.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.uniq.join("str0")

# 436.
#
# Title: Subtraction on array element
# Category: [ Standard lib ]
#
# Description:
# Gets an element from the array 'var0' and subtract a number (1 here) from it
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0] - 1

# 437.
#
# Title: Symbol type check on hash element
# Category: [ Standard lib ]
#
# Description:
# Gets a value from the hash at key :sym0, and check if it is a Symbol.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

var0[:sym0].is_a?(Symbol)

# 438.
#
# Title: Load pre-initializer in Rails boot
# Category: [ Data or Control Flow ]
#
# Description:
# Loads the pre-initializer script if it exists.
# Part of the Rails 2.1 boot sequence.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method
  if File.exist?(preinitializer_path)
    load(preinitializer_path)
  end
end

# 439.
#
# Title: Push array element in to another
# Category: [ Standard lib ]
#
# Description:
# Push an element from the array 'var1' (at index 0 here) to the array 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.push(var1[0])

# 440.
#
# Title: active_record config
# Category: [ Standard lib ]
#
# Description:
# Gets the configuration related to active_record as a hash.
# Part of Rails
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

config.active_record

# 441.
#
# Title: Join backtrace into string
# Category: [ Standard lib ]
#
# Description:
# Join the backtrace associated with exception 'var0' using "str0" as separator.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.backtrace.join("str0")

# 442.
#
# Title: Integer ordinal
# Category: [ Standard lib ]
#
# Description:
# Gets the integer ordinal for the character at the index 'var1' in string 'var0'.
# Then assign it to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1].ord

# 443.
#
# Title: Enumerator for sorted keys of hash
# Category: [ Standard lib ]
#
# Description:
# Gives an enumerator which can iterate over a sorted array containing
# keys of the hash 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.keys.sort.map

# 444.
#
# Title: Add variables and subtract number
# Category: [ Standard lib ]
#
# Description:
# Add 'var0' and 'var1' and subtract a number (0 here) from the sum.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 + var1) - 0

# 445.
#
# Title: define instance method
# Category: [ Standard lib ]
#
# Description:
# Defines an instance method for the current module/class.
# The name of the method is a string composed by adding 'str0' to 'var0'.
# The body of the method checks if 'var1' is equal to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

define_method("#{var0}str0") do
  var1 == var0
end

# 446.
#
# Title: Key value pair from options hash
# Category: [ Standard lib ]
#
# Description:
# Gives a hash with one key-value pair, where the key :sym0 points to options[:sym1]
# from the options hash. Generally used as an argument to a function.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

:sym0 => options[:sym1]

# 447.
#
# Title: Enumerator for array within hash
# Category: [ Standard lib ]
#
# Description:
# Gives an enumerator which can iterate over an array which is a member
# of the hash 'var0' at key 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1].each

# 448.
#
# Title: Join array, add string
# Category: [ Standard lib ]
#
# Description:
# Join the array 'var0' into a string using 'str0' as separator,
# and then add string 'str0' to the end of the joined string.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.join("str0") + "str0"

# 449.
#
# Title: next iteration of loop
# Category: [ Standard lib ]
#
# Description:
# Skip and execute the next iteration of the loop if 'var0'
# equals either the string "str0" or the string "str1"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ Yes ]
#
# next if ["str0", "str1"].include?(var0)

if ((var0 == "str0") || (var0 == "str1"))
  next
end

# 450.
#
# Title: Comparison on sliced string
# Category: [ Standard lib ]
#
# Description:
# Checks if a substring of 'var0' equals "str0". The substring is obtained
# by slicing it between indexes in the mentioned range (0..0 here)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[0..0] == "str0"

# 451.
#
# Title: Open file and write
# Category: [ Standard lib ]
#
# Description:
# Open the file/IO-stream 'var0' in the mode "str0" and write 'var2' to it.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

open(var0, "str0") do |var1|
  var1.write(var2)
end

# 452.
#
# Title: Duplicate and force encoding
# Category: [ Standard lib ]
#
# Description:
# Duplicates 'var0' using dup, and forces the 'str0' encoding on the copy.
# The force_encoding method keeps the byte representation of the string and
# changes the characters to get the required encoding. It is destructive -
# modifies the input object, hence the duplication step before the encoding.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.dup.force_encoding("str0")

# 453.
#
# Title: Subtract length and add number
# Category: [ Standard lib ]
#
# Description:
# Subtract the length of 'var1' from 'var0', and add a number (0) to the difference
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 - var1.length) + 0

# 454.
#
# Title: Load script after environment check
# Category: [ Data or Control Flow ]
#
# Description:
# Load (require) a ruby script if another file mentioned in the environment hash
# ENV (at key "str0") exists.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if File.exists?(ENV["str0"])
  require("str1")
end

# 455.
#
# Title: Boolean right shift (>>) and AND (&)
# Category: [ Standard lib ]
#
# Description:
# Boolean right shift the value of 'var1' by a number (0 here)
# and then perform a Boolean & with another number (1 here).
# Then assign the result to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = (var1 >> 0) & 1

# 456.
#
# Title: Duplicates of array elements
# Category: [ Standard lib ]
#
# Description:
# Iterate over the array 'var0' and returns a list of duplicates of elements of 'var0'.
# The duplicates are shallow copies created using the dup method.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]
#
# => var0.collect(&:dup)

var0.collect do |var1|
  var1.dup
end

# 457.
#
# Title: Range object
# Category: [ Standard lib ]
#
# Description:
# Gives a Range object that runs from 0 through the var0.size-1
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

0..var0.size - 1

# 458.
#
# Title: class name
# Category: [ Standard lib ]
#
# Description:
# Gets the name of current class as a string.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

self.class.name

# 459.
#
# Title: path as string
# Category: [ Standard lib ]
#
# Description:
# Gets the 'path' property of 'var0' as a string.
# When 'var0' is a File object, path gives the pathname
# that was used to create the object.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.path.to_s

# 460.
#
# Title: parameters hash value
# Category: [ Standard lib ]
#
# Description:
# Gets the value at :sym0 from the 'parameters' hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

parameters[:sym0]

# 461.
#
# Title: Float division
# Category: [ Standard lib ]
#
# Description:
# Divide the float form of 'var0' by the float form of 'var1'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_f / var1.to_f

# 462.
#
# Title: Push array elements to self
# Category: [ Standard lib ]
#
# Description:
# Iterate over the array 'var0' and push (<<) every element to the
# current object.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# self.push *var0  ## splat array var0 and push to self

var0.each do |var1|
  self << var1
end

# 463.
#
# Title: Comparison of range
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' is not less than a number (0 here) and not greater than another (1)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ Yes ]
#
# (0..1).include?(var0)

((var0 >= 0) && (var0 <= 1))

# 464.
#
# Title: Last part of split variable
# Category: [ Standard lib ]
#
# Description:
# Splits the 'var1' at 'str0' and assign the last part to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1.split("str0").last

# 465.
#
# Title: Enumerator on times
# Category: [ Standard lib ]
#
# Description:
# Gets an enumerator that can execute a given block as many times as the size of 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size.times

# 466.
#
# Title: Rails action_controller.consider_all_requests_local config
# Category: [External lib ]
#
# Description:
# Sets the Rails configuration consider_all_requests_local to false.
# When true this makes sure that error messages contain debugging details
# (error, exception backtrace etc). When it is set to false, the error messages
# are more user focussed, with fewer details.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

config.consider_all_requests_local=(false)

# 467.
#
# Title: New Post object
# Category: [ Standard lib ]
#
# Description:
# Creates a new Post object using 'path' property of 'var1', and assign it to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Post.new(var0.path)

# 468.
#
# Title: Join mapped array
# Category: [ Standard lib ]
#
# Description:
# Executes the method :sym0 on the list 'var0' and joins the
# returned array using "str0" as separator
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.map(&:sym0).join("str0")

# 469.
#
# Title: Comparison on size
# Category: [ Standard lib ]
#
# Description:
# Checks if the size of the current object is greater than 0.
# The size here may be also be a local variable or a method
# whose return value is used for comparison.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

size > 0

# 470.
#
# Title: Instantiate new object
# Category: [ Standard lib ]
#
# Description:
# On being invoked, 'method' return a new object of the current class.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ No ]
# There's a more common way to write the code snippet: [ No ]

def method
  self.class.new
end

# 471.
#
# Title: Comparison on name
# Category: [ Standard lib ]
#
# Description:
# Checks if the name property of 'var0' equals :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.name == :sym0

# 472.
#
# Title: Enumerator on times
# Category: [ Standard lib ]
#
# Description:
# Gives an enumerator that can execute a given block as many times as the
# result of the subtraction of a number (0 here) from the size of 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0.size - 0).times

# 473.
#
# Title: Enumerate on parts of split
# Category: [ Standard lib ]
#
# Description:
# Splits the string 'var0' on occurances of pattern /str0/ and returns
# an enumerator that can iterate on it.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.split(/str0/).map

# 474.
#
# Title: type check on Hash
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0' is an object of the class Hash
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.class == Hash

# 475.
#
# Title: Absolute value of difference
# Category: [ Standard lib ]
#
# Description:
# Gets the absolute value of the difference between var0 and var1.
# Absolute value here refers to difference being expressed as a positive value.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 - var1).abs

# 476.
#
# Title: singleton
# Category: [ Other ]
#
# Description:
# Get the singleton property associated with 'var0', and boolean reverse it
# using the NOT (!) operator. There is no 'singleton' method on standard lib.
# There are singleton_class, singleton_methods etc
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

!var0.singleton

# 477.
#
# Title: Element from params hash
# Category: [ Standard lib ]
#
# Description:
# Gets the value at "str0" from the 'params' hash associated with 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.params["str0"]

# 478.
#
# Title: pop the last element from a list if its a hash
# Category: [ Data or Control Flow ]
#
# Description:
# Pops the last element from the list 'var0' if it is a Hash, and assign the popped
# element to 'var1'. This is commonly used to extract the options hash passed as
# the last argument to a function call.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0.last.is_a?(Hash)
  var1 = var0.pop
end

# 479.
#
# Title: Length minus a number
# Category: [ Standard lib ]
#
# Description:
# Subtract a number (0 here) from the length of 'var1' and assign it to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1.length - 0

# 480.
#
# Title: Addition to Time
# Category: [ Standard lib ]
#
# Description:
# Add 'var1' to current time and assign the new time to 'var0'
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = Time.now + var1

# 481.
#
# Title: Assign to hash at key given by array
# Category: [ Standard lib ]
#
# Description:
# Assign var2 to the hash 'var0' at the key which is an element if array 'var1'
# (at index 0).
# 'var0' may also be an array, in which case 'var2' is assigned to the index
# fetched from the array 'var1' (index 0)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0[var1[0]] = var2

# 482.
#
# Title: Multiplication of string/number
# Category: [ Standard lib ]
#
# Description:
# Gets the product of 'var0' and the integer version of 'var1'. If 'var0' is a
# string, it gives another string created by repeating 'var0' 'var1' times.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 * var1.to_i

# 483.
#
# Title: query string
# Category: [ External lib ]
#
# Description:
# This constructs the query needed to update serveral records at once using
# update_all in the acts_as_list gem. The scope_condition part helps filter
# out the relevant records, and the other parts are concerned with updating
# the position_column field.
# For example -
#  "where priority like 'high' AND #{position_column} = #{send(position_column).to_i}"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

"#{scope_condition}str0#{position_column}str1#{send(position_column).to_i}"

# 484.
#
# Title: First from list of keys
# Category: [ Standard lib ]
#
# Description:
# Gets the list of keys of the hash 'var0', and returns the first one
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.keys.first

# 485.
#
# Title: Match message with regex
# Category: [ Standard lib ]
#
# Description:
# Compares the message property of 'var0' with the regular expression /str0/,
# and checks if there's a match. Returns match object if there is match, nil otherwise
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.message =~ /str0/

# 486.
#
# Title: Passing Binding object as argument
# Category: [ Standard lib ]
#
# Description:
# Passes the current context as a Binding object to the 'result' method on 'var1'.
# This binding can be applied to arbitrary ruby code later on, where
# all the local/instance variables of current context will be available.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0 = var1.result(binding)

# 487.
#
# Title: Full path in Rails application
# Category: [ External lib ]
#
# Description:
# Joins the given strings "str0" and "str1" with Rails application root path
# to get the full path. Eg-
#   Rails.root.join("config", "environment.rb")  #=> /code/project/config/environments.rb
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

Rails.root.join("str0", "str1")

# 488.
#
# Title: Size comparison
# Category: [ Standard lib ]
#
# Description:
# Checks if the size of 'var0' is greater or equal to a number (0 here).
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.size >= 0

# 489.
#
# Title: Multiplication with float
# Category: [ Standard lib ]
#
# Description:
# Convert to float and multiply with a number (0 here)
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.to_f * 0

# 490.
#
# Title: Exit status of a process
# Category: [ Standard lib ]
#
# Description:
# Checks if the exit-status of a process is (not) 0.
# The exit-status value is actually the least significant eight bits from
# the return code of the process, and is available only if the process
# has exited. Generally used with $?, which holds the value of the recently
# executed child process.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.exitstatus != 0

# 491.
#
# Title: Rails load pre-initializer
# Category: [ External lib ]
#
# Description:
# Load pre-initializer script from its path.
# This is a part of the boot process in a Rails (version 2) application
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

load(preinitializer_path)

# 492.
#
# Title: In place pattern substitution
# Category: [ Standard lib ]
#
# Description:
# For 'var0', substitutes the first occurance of regular expressions
# /str0/ and /str2/ with "str1". Modifies 'var0' in place.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes]
# There's a more common way to write the code snippet: [ No ]

var0.sub!(/str0/, "str1").sub!(/str2/, "str1")

# 493.
#
# Title: Assign hash element to another hash
# Category: [ Data or Control Flow ]
#
# Description:
# If var0[:sym0] exists, then assign it to the hash 'var1' at :sym0
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

if var0[:sym0]
  var1[:sym0] = var0[:sym0]
end

# 494.
#
# Title: Presence check on params element
# Category: [ External lib ]
#
# Description:
# Checks if a value is present at key :sym0 in params hash.
# The value should not be nil, should not be an empty array or hash,
# and should not be a blank string (containing only whitespaces or no elements)
# Its the opposite of the blank? method. Part of Rails active_support/core_ext.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

params[:sym0].present?

# 495.
#
# Title: Regex check on text
# Category: [ Standard lib ]
#
# Description:
# Checks if 'var0.text' matches the regular expression /str0/
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

var0.text =~ /str0/

# 496.
#
# Title: Multiply array and join
# Category: [ Standard lib ]
#
# Description:
# Mutiplies the array ["str0"] with a given number (0 here), and then joins
# the resulting array using "str1" as separator. Mutiplying the array with
# a number repeat the elements as many times.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(["str0"] * 0).join("str1")

# 497.
#
# Title: Subtract and add
# Category: [ Standard lib ]
#
# Description:
# Subtract 'var0' from 'var1' and add a number to the difference.
#
# Useful programming task or idiom: [ No ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

(var0 - var1) + 0

# 498.
#
# Title: File path using RbConfig::CONFIG values
# Category: [ Standard lib ]
#
# Description:
# Creates file path by joining values from RbConfig::CONFIG.
# The values at keys "str1" and "str2" are added/concatenated, and (file-)joined with
# the value at "str0"
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.join(RbConfig::CONFIG["str0"], RbConfig::CONFIG["str1"] + RbConfig::CONFIG["str2"])

# 499.
#
# Title: Generate path for a file name
# Category: [ Standard lib ]
#
# Description:
# Gets the directory name of "str0" by calling File.dirname,
# and joins it with "str1" to generate the full path for "str1".
# The full path is then assigned to 'var0'.
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

File.join(File.dirname("str0"), "str1")

# 500.
#
# Title: Size check on var0 and var1
# Category: [ Standard lib ]
#
# Description:
# Checks if the size of 'var0' and 'var1' are both equal to a number (0 here).
#
# Useful programming task or idiom: [ Yes ]
# Can be encapsulated in standalone function: [ Yes ]
# There's a more common way to write the code snippet: [ No ]

((var0.size == 0) && (var1.size == 0))

