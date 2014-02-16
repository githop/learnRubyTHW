def times_table(rows)
	for x in (1..rows)
		row = ''
		for y in (1..rows)
			row += "#{x * y}\t"
		end
		puts row
	end
end

def each_table(rows)
	(1..rows).each {|x|
		row = ''
		(1..rows).each {|y| row += "#{x * y}\t"}
		puts row
	}
end


times_table(5)
each_table(5)