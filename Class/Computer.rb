require_relative 'Player'

class Computer < Player
	def initialize
		super
	end
	# Generates a random hand against the possible hands.
	def get_hand
		hand = Random.new.rand(@hands.count)
		@hand = @hands[hand]
	end
end
