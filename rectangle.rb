class RectangularPrism 
  attr_reader :length 
    def initialize(l, w, h)
        @length = l
        @width = w
        @height = h
    end
    
    def volume
      @length * @width * @height
    end
    
end

new_prism = RectangularPrism.new(4, 5, 6)
p new_prism.class == RectangularPrism
p new_prism.volume == 120
p new_prism.length == 4
