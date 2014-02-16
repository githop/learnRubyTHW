def print_triangle(rows)
	row = "*"
	for e in (1..rows)
		puts row * e
	end
end

def each_triangle(rows)
	row = "*"
	(1..rows).each {|e| puts row * e}
end


print_triangle(5)
each_triangle(5)

