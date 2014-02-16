class GuessingGame
  def initialize(answer)
    @answer = answer
		@guess = rand(100)
	end

	def guess(guess)
    @guess = guess
		if @guess < @answer
			:low
		elsif @guess > @answer
			:high
		else
			:correct
		end
	end

	def solved?()
		@answer == @guess
	end

end
