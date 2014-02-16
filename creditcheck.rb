class CreditCard
	def initialize(number)
		@number = number

		raise ArgumentError if @number.to_s.length != 16
	end

	def check_card(number)
<<<<<<< HEAD
		arr = @number.to_s.split('')
		
		check = arr.reverse.map.with_index {|item, index| 
			if index % 2 == 1
				item.to_i + item.to_i
			else
				item.to_i
			end

		}

		check.join.to_s.split('')
		sum = check.inject{|sum, x| sum + x}
		return true if sum % 10 == 0

		
=======
		arr = []
		even = []
		odd = []
		arr << @number.to_s.split('')

		
		print arr
>>>>>>> ac5dc6bb5d9df5ae0bcf988e85a5d4c6b23fdcff
	end


end


number = 4563960122001999

card = CreditCard.new(number)
card.check_card(number)