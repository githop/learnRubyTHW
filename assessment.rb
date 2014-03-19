# DBC Chicago Phase 0 Assessment

# EXERCISE 1

first_name = "Tom" 
last_name  = "Hopkins" 

p first_name == "Tom"
p last_name  == "Hopkins" 

# EXERCISE 2

def calculate_product(num)
  y = 0
  num.each { |x|   y += x  }
  y
end

puts calculate_product([1,2,3]) == 6 
puts calculate_product([0,-1,-10]) == -11 
puts calculate_product([1,-1,-10]) == -10
puts calculate_product([]) == 0 


# EXERCISE 3
def calculate_product_odd(arr)
  y = 0
  arr.each { |x| x.odd? ? y += x : x }
  y
end

puts calculate_product_odd([1,2,3]) == 4      # returns true, because 2 is even
puts calculate_product_odd([0,-1,-10]) == -1  # returns true, because 0 and -10 are even
puts calculate_product_odd([1,2,3,4,5]) == 9 # returns true, because 4 and 2 are even
puts calculate_product_odd([2,10]) == 0 

# EXERCISE 4

=begin
:first and :last are symbols that act as hash keys for an undefined hash. format_name takes as input ahash and returns the values formatted as last name, first name. display_name prints the output of format_name. It's also passing the same argument. 
=end




# EXERCISE 5
#5000500 = sum 10k 
def find_missing_number(str)
  str = str.scan(/\d{1,}/).collect! { |x| x.to_i } #get rid of commas 
  sum = str.inject { |x, y| x += y }
  control = 50005000
  return control - sum   
end

string_missing_7 = (1..10000).reject { |x| x == 7 }.join(", ") 
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(", ")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(", ") 

puts find_missing_number(string_missing_7) == 7 
puts find_missing_number(string_missing_4567) == 4567
puts find_missing_number(string_missing_9999) == 9999



# EXERCISE 6

#<Your code here>




# EXERCISE 7

#<Your code here>




# EXERCISE 8

=begin

  Reverse Polish Notation Calculator

    <paste code sample>

    <Your answer here>




  Reverse Words

    <paste code sample>

    <Your answer here>




  Fibonacci Number

    <paste code sample>

    <Your answer here>

=end
