class Player
	attr_accessor :score, :hands
	attr_reader :hand
	def initialize
		@hand = ""
		@score = 0
		@hands = []
	end
	# Call the function fight of the Hand object
	def fight(player)
		case @hand.fight(player.hand)
		when -1
			player.score += 1
		when 1
			@score += 1
		end
	end
end
