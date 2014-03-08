# the words for numbers 1 - 19 are unique, from there you would need only the words for twenty,thrity...ninty, plus the word hundred. 
# I'm not sure how to solve this without using a bunch of case statements. I know we're supposed to use recursion in this some how yet 
# I could create an array or hash to map out the words to numbers.
# Another unsolved problem is how to parse the input correctly. e.g. for a number like 43, 4 needs to map to forty and 3 to three
# One way perhaps is to use a bunch of case statements and ranges 
def in_words(num)

words = { 1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",
          6=>"six",7=>"seven",8=>"eight",9=>"nine", 10=>"ten",
          11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",
          16=>"sixteen",17=>"seventeen", 18=>"eighteen",19=>"nineteen",20=>"twenty",
          30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",
          90=>"ninety", 100=>"one hundred" }
    
    if words.has_key?(num)

      words[num]

    elsif num <= 99

      [words[num - num % 10], words[num%10]].join(' ') 

    end 

end


puts in_words(4) == "four"
puts in_words(15) == "fifteen"
puts in_words(25) == "twenty five"
puts in_words(67) == "sixty seven"
puts in_words(100) == "one hundred" 
 
