class CreditCard
	def initialize(number)
		@number = number

		raise ArgumentError if @number.to_s.length != 16
	end

	def check_card(number)
		arr = []
		even = []
		odd = []
		arr << @number.to_s.split('')

		
		print arr
	end


end


number = 4563960122001999

card = CreditCard.new(number)
card.check_card(number)