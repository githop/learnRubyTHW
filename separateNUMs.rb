def separate_comma(number)
	number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end









puts separate_comma(1000)
puts separate_comma(1000000)
puts separate_comma(0)
puts separate_comma(100)
