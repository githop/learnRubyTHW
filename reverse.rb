def reverse_words(str)
	arr = str.scan(/\w+/)
	for e in arr
		e.reverse!
	end
	return arr.join(" ")
end





string = "This is a string hopefully we can reverse each word"
puts reverse_words(string)

