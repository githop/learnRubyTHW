#5000500 = sum 10k 
def find_missing_number(str)
  str = str.scan(/\d{1,}/).collect! { |x| x.to_i } #get rid of commas 
  sum = str.inject { |x, y| x += y }
  control = 50005000
  return control - sum   
end

string_missing_7 = (1..10000).reject { |x| x == 7 }.join(", ") 
string_missing_4567 = (1..10000).reject { |x| x == 4567 }.join(", ")
string_missing_9999 = (1..10000).reject { |x| x == 9999 }.join(", ") 

puts find_missing_number(string_missing_7) == 7 
puts find_missing_number(string_missing_4567) == 4567
puts find_missing_number(string_missing_9999) == 9999
