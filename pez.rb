#create pez with many flavors
#show amount
#eat
#push
#read

#A user story is a plain english request for a feature or function
#three core compents are type of user, a goal, a reason 

class PezDispenser
  def initialize(flavor)
    @flavor = flavor
  end

  def see_all_pez
    @flavor
  end

  def get_pez
    @flavor.pop
  end

  def add_pez(pez)
    @flavor << pez 
  end

  def pez_count
    @flavor.length 
  end
end


flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry)
print flavors.sort 
print flavors
print flavors.sort!
print flavors
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
print super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
puts super_mario.add_pez("gusher")
puts super_mario.pez_count


