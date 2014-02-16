class CreditCard
	def initialize(number)
		@number = number

		raise ArgumentError if @number.to_s.length != 16
	end

	def check_card(number)
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

		
	end


end


number = 4563960122001999

card = CreditCard.new(number)
card.check_card(number)