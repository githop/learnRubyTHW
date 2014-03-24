class House
  def initialize(current_temp, minimum_temp, maximum_temp) 
    @current_temp = current_temp
    @minimum_temp = minimum_temp
    @maximum_temp = maximum_temp
    @ac_on = false
    @heater_on = false
  end

  attr_reader :heater_on, :ac_on, :current_temp

  def toggle_heater
    if @heater_on == false and @ac_on == false
      @heater_on = true
    else
      @heater_on = false
    end
  end

  def toggle_ac
    if @ac_on == false and @heater_on == false
      @ac_on = true
    else
      @ac_on = false
    end
  end

  def update_temp!

    if @current_temp > @maximum_temp
      if @ac_on == false and @heater_on == true 
	@ac_on = true
	@heater_on = false	
	@current_temp += 2
      elsif @ac_on == true and @heater_on == false
	@ac_on = false
	@heater_on = true
	@current_temp -= 1
      end
    elsif @current_temp < @maximum_temp
      if @ac_on == true and @heater_on == false
	@ac_on = false
	@heater_on = true
	@current_temp -= 1
      elsif @ac_on == false and @heater_on == true 
	@ac_on = true
	@heater_on = false
	@current_temp += 2
      end
    else
      @current_temp
    end


  end
end

my_house = House.new(75, 68, 74)

def calculate_product_odd(arr)
  y = []
  arr.each { |x| x.odd? ? y << x : x }
  print y.each { }
end

puts calculate_product_odd([1,2,3])    # returns true, because 2 is even
puts calculate_product_odd([0,-1,-10])  # returns true, because 0 and -10 are even
puts calculate_product_odd([1,2,3,4,5]) # returns true, because 4 and 2 are even
puts calculate_product_odd([2,10])
