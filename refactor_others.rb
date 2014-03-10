# Readable Code Refactoring Challenge



# Original unrefactored code:
class CreditCard

  def initialize(number)
    @credit_card = number.to_s.split("")
    raise ArgumentError.new("Error") unless @credit_card.length == 16
    @final_array = []
  end

  def check_card
    @credit_card = @credit_card.map { |x| x.to_i } #changes each value to an integer

    @credit_card = @credit_card.each_with_index do |x, index|
      if index.even?            #if x is in an even index position, push x*2 into final_array
        @final_array << (x * 2) 
      else                      #else push x into final_array
        @final_array << x
      end
    end

    @final_array.to_s.split(//).map!(&:to_i).inject(:+) % 10 == 0
  end
end



# Notes on changes to improve readability:
# (try to be explicit about which guideline is being adhered to)
# the assert error could be redefined provide a more specific messsage. 
# line 15, @credi_card doesn't need to be assigned, same for 17, because of this .map needs to be .map!  
# line 17 can be compressed with shorthand notation 
# line 25, you can call scan or split(''), both will work. 


# Refactored code for readability:
#
class CreditCard

  def initialize(number)
    @credit_card = number.to_s.split("")
    raise ArgumentError.new("Error") unless @credit_card.length == 16
    @final_array = []
  end

  def check_card
    @credit_card.map! { |x| x.to_i } #changes each value to an integer

    @credit_card.each_with_index { |x, index| index.even? ? @final_array << (x * 2) : @final_array << x } #compressed for easier reading

    @final_array.to_s.split('' ).map!(&:to_i).inject(:+) % 10 == 0 #split argument changed from "//" to "''" 
  end
end


#Reflections
# this was probably the hardest challenge for me thus far. I say this becuase I am often a very indecisive person. So when I apporached
# this challenge, I'm still not yet at the level where I can reasonalbly be weighing the pros and cons of one apporach over another. 
# I'd imagine refactoring code to one day be a very enjoyable experience, once I have a more clear understanding of the coding mindset


   

# Review and Reflect:
#

