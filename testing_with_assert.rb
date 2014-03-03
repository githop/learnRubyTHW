#1) PASTE YOUR PREVIOUS IS_FIBONACCI? CODE HERE:
 
def is_fib?(i, a = 0, b = 1)
   if i == a || i == b
     return true
   elsif b > i
     return false
   else
     is_fib?(i, b, a + b)
   end
end
# REVIEW THE SIMPLE ASSERT STATEMENTr
# test the method with driver code below.
 
def assert(num)
  raise "Assertion failed!" unless yield num
end
 
 
#3) WRITE OUT IN PSEUDOCODE WHAT HAPPENS WHEN THE ABOVE CODE RUNS
#
#
 
 
#4) CONVERT THESE TESTS INTO ASSERT STATEMENTS
 
# puts is_fibonacci?(144) == true
assert(144) { |num| is_fib?(num) == true }
# puts is_fibonacci?(1596) == false
assert(1596) { |num| is_fib?(num) == false }
# puts is_fibonacci?(610) == true
assert(610) { |num| is_fib?(num) == true }
# puts is_fibonacci?(5000) == false
assert(5000) { |num| is_fib?(num) == false }
# puts is_fibonacci?(6600) == true
assert(6600) { |num| is_fib?(num) == false }
# puts is_fibonacci?(6765) == true
assert(6765) { |num| is_fib?(num) == true }

# Run your assert statements to find out which test has an incorrect expectation.  The error shown should point you to a line number trace of the offending assert statement.  Correct the expectation (`true` or `false`?), and rerun the code to make sure there are no other errors.
 
#
#Write down the integer that failed the assertion below:
#6600 
 
 
#5) BONUS: INCLUDE A CUSTOM ERROR MESSAGE 
#Your new assert method code and test code here:
#
 
 
#6) Reflection
# I hope I did this exercise correctly. I spent   
# a fair amount of time figuring out what to do with 
# the yield statements.
