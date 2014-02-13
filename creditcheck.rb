class CreditCard
	def initialize(number)
		@number = number

		raise ArgumentError if @number.to_s.length != 16
	end

	def check_card(number)
		even = []
		odd = []

		
		puts @number.to_s

	end


end


number = 4563960122001999

card = CreditCard.new(number)
card.check_card(number)