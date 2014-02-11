def is_fib?(i)
	a =  Math.sqrt(5*i**2 + 4)
	b = Math.sqrt(5*i**2 - 4)
	if (a.to_s.include? ".0") || (b.to_s.include? ".0")
		return true
	else
		return false
	end
end


is_fib?(5)
is_fib?(4)