def valid_string?(str)
  return true if str.match "(\\[.+\\])" || "|(\\(\\))" || "|({})"  
end


puts valid_string?("[ ]") == true                 # returns true
puts valid_string?("[  ") == false                # returns false
puts valid_string?("[ ( text ) {} ]") == true      # returns true
puts valid_string?("[ ( text { ) } ]") == true    # returns false
