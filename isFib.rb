def is_fib?(i)
<<<<<<< HEAD
	a =  Math.sqrt(5*(i**2) + 4)
	b = Math.sqrt(5*(i**2) - 4)
	
	if (a % 1 == 0 || b % 1 == 0)
=======
	a =  Math.sqrt(5*i**2 + 4)
	b = Math.sqrt(5*i**2 - 4)
	if (a.to_s.include? ".0") || (b.to_s.include? ".0")
>>>>>>> ac5dc6bb5d9df5ae0bcf988e85a5d4c6b23fdcff
		return true
	else
		return false
	end
<<<<<<< HEAD

	


end


puts is_fib?(5)
puts is_fib?(927372692193078999171)
puts Math.sqrt(5*(927372692193078999171**2) + 4) % 1 == 0
puts (4300100551127196232485157882924375093436201) % 1 
=======
end


is_fib?(5)
is_fib?(4)
>>>>>>> ac5dc6bb5d9df5ae0bcf988e85a5d4c6b23fdcff
