def valid_triangle?(a, b, c)
    sum = 0
    if a != 0 and b != 0 and c != 0
    
      if a >= b
        largest = a
        sum += b
      else 
        largest = b
        sum += a
      end
    
      if c > largest
        sum += largest
        largest = c
      else
        sum += c
      end
    
      if sum > largest
        return true
      else 
        return false
      end
    
    else 
      return false
    end
end

puts valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides

puts valid_triangle?(1,1,1) # => true, an equilateral triangle

puts valid_triangle?(3,4,5) # => true, a right triangle
puts valid_triangle?(4,3,5) # => true, the same right triangle
puts valid_triangle?(5,3,4) # => true, the same right triangle

puts valid_triangle?(10, 10, 100) #=> false, no such triangle exists
