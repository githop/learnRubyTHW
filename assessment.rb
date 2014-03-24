# DBC Chicago Phase 0 Assessment

# EXERCISE 1

first_name = "Tom" 
last_name  = "Hopkins" 

p first_name == "Tom"
p last_name  == "Hopkins" 

# EXERCISE 2

def calculate_product(num)
  y = 1
  num.each { |x| y *= x  }
  y
end

puts "\nex2"
puts calculate_product([1,2,3]) == 6 # this test puts 'true' if calculate_product([1,2,3]) returns the correct value of 6
puts calculate_product([0,-1,-10]) == 0
puts calculate_product([1,-1,-10]) == 10 
puts calculate_product([]) == nil 
#if I were to use an enumerable, it would likely be inject; e.g., 
# num.inject(:*) 

# EXERCISE 3
def calculate_product_odd(arr)
  product = []
  arr.each { |x| x.odd? ? product << x  : x }
  y = 1
  product.each { |x| y *= x }
  y
end
puts "\nex3"
puts calculate_product_odd([1,2,3]) == 3      # returns true, because 2 is even
puts calculate_product_odd([0,-1,-10]) == -1   # returns true, because 0 and -10 are even
puts calculate_product_odd([1,2,3,4,5]) == 15  # returns true, because 4 and 2 are even
puts calculate_product_odd([2,10]) == nil

# EXERCISE 4

=begin
:first and :last are symbols that act as hash keys for an undefined hash. format_name takes as input a hash and returns the values formatted as last name, first name. display_name prints the output of format_name. It's also passing the same argument. 
=end




# EXERCISE 5
#5000500 = sum 10k 
def find_missing_number(str)
  str = str.scan(/\d{1,}/).collect! { |x| x.to_i } #get rid of commas 
  sum = str.inject { |x, y| x += y } # sum array 
  control = 50005000
  return control - sum   # diff = number picked. 
end

string_missing_7 = (1..10000).reject { |x| x == 7 }.join(", ") 
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(", ")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(", ") 

puts "\nex5"
puts find_missing_number(string_missing_7) == 7 
puts find_missing_number(string_missing_4567) == 4567
puts find_missing_number(string_missing_9999) == 9999



# EXERCISE 6
def valid_string?(str)
    return true if str.match "(\\[.+\\])" || "|(\\(\\))" || "|({})"  
end

puts "\nex6"
puts valid_string?("[ ]") == true                 # returns true
puts valid_string?("[  ") == false                # returns false
puts valid_string?("[ ( text ) {} ]") == true      # returns true
puts valid_string?("[ ( text { ) } ]") == true    # returns false

#full disclosure. I found this solution on stackexchange 
#the only change i made was to make the shorthand return if statement. 


# EXERCISE 7




# EXERCISE 8

=begin

  Reverse Polish Notation Calculator
    class RPNCalculator
      def evaluate(expression)
	expression = expression.split
	operands = []
	evaluation = []

	expression.each do |x|
	  case x
	    when /\d/
	      evaluation.push(x.to_f)
            when "-", "/", "*", "+", "**"
	      operands = evaluation.pop(2)
              evaluation.push(operands[0].send(x, operands[1]))
	    end
	end
	return evaluation.pop
     end
  end    

<Your answer here> 
     There are some other one's like Yim's that are more concise and take advantage of ruby's short hand, 
     however I like this one because it matches up well with the postfix algorithm..http://en.wikipedia.org/wiki/Reverse_Polish_notation      

  Reverse Words
   def reverse_words(str)
     words = str.split.each { |word| word.reverse! }
     reversed = words.join(" ")
    end

    <Your answer here> 
    The way the variables are named in this one makes it very easy to follow along with the flow of the code.
    first prep the words to be reversed, then combine them after so. 




  Fibonacci Number

    def is_fibonacci?(i, zero=0, one=1)
     return true if one == i
      one > i ? false : is_fibonacci?(i, one, zero + one)
     end

    <Your answer here>
    I chose this one for 3 reasons:
    1. It's recursive, which was the focus of the exercise
    2. It takes advantage of the ruby shortand
    3. the variables are named clearly 

=end
