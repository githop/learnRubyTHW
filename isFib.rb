def is_fib?(i)
	a =  Math.sqrt(5*(i**2) + 4)
	b = Math.sqrt(5*(i**2) - 4)
	
	if (a % 1 == 0 || b % 1 == 0)
		return true
	else
		return false
	end

	


end


puts is_fib?(5)
puts is_fib?(927372692193078999171)
puts Math.sqrt(5*(927372692193078999171**2) + 4) % 1 == 0
puts (4300100551127196232485157882924375093436201) % 1 