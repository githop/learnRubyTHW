def tailFactorial(n, result)
	if n == 1
		return result
	else
		tailFactorial((n - 1), (result * n))
	end
end

def factorial(n)
	if n == 1 
		return 1
	else
		return n * factorial(n-1)
	end
end

puts "Here is a tail recursive approach to the factroial problem\n"
puts tailFactorial(8, 1)

puts "-" * 10 
puts "Here is a tree recursive approach to the factorial problem"
puts factorial(8)

puts "\nExecution times\n"
puts "Tree recursion: \n"

st = Time.now
result = factorial(8)

tt = Time.now - st

puts "Tree recursive approach, 8! = " +
result.to_s + ", and was done in" + 	tt.to_s + "/n"

puts "Tail Recursion: \n"
st = Time.now
result = tailFactorial(8, 1)
tt = Time.now - st
puts "Tail recursive approach, 8! = " + 
result.to_s + ", and was done in " + tt.to_s + "\n"

