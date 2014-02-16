test_array = []
for e in (1..100)
	test_array.push(e)
end

def super_fizzbuzz(array)
	for e in array
		if (e % 3 == 0) && (e % 5 == 0)
			array[e-1] = "FizzBuzz"

		elsif (e % 3 == 0)
			array[e-1] = "Fizz"

		elsif (e % 5 == 0)
			array[e-1] = "Buzz"

		else
			array[e]
		
		end
	end
	return array
end


super_fizzbuzz(test_array)