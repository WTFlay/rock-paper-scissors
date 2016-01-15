require_relative 'Player'

class Humain < Player
	def initialize
		super
	end
	# Get the hand of the player with keyboard input
	def get_hand
		@hands.length.times do |i|
			puts "	" + (i + 1).to_s + " - " + @hands[i].to_s + "\n"
		end
		print "\nYour choice : "
		hand = gets.chomp
		if hand.to_i > 0 and hand.to_i <= @hands.length
			@hand = @hands[hand.to_i - 1]
			true
		else
			puts "Please enter a proper value.\n\n"
			false
		end
	end
end
