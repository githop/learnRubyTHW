class List
  attr_accessor :items
  
    def initialize
        @items = []
    end 
    
    def add_item(item)
        @items << item
    end
    
    def check_off(item)
      @items.map! { |x|
	  if x == item
	    "#{x} X"
	  else
	    x 
	  end
	}  
    end	

    def see_list
      puts "My grocery list:"
      puts @items
    end
end
 
 
# Your Driver Code goes here...
list = List.new
list.class == List

list.add_item("milk") #=> "milk"
list.add_item("eggs")

list.see_list
list.check_off("milk")
list.see_list

