module Strength_Weakness
	def add_strength
	end
	def add_weakness
	end
end

class Hand
	extend Strength_Weakness
	attr_accessor :name
	attr_reader :strength, :weakness
	def initialize
		@name = ""
		@strength = {}
		@weakness = {}
	end

	# Add strength
	def add_strength(hand, text)
		if @strength.empty?
			@strength[hand.name] = text
			hand.add_weakness(self, text)
		else
			if !@strength.include?(hand.name)
				@strength[hand.name] = text
				hand.add_weakness(self, text)
			end
		end
	end
	
	# Add weakness
	def add_weakness(hand, text)
		if @weakness.empty?
			@weakness[hand.name] = text
			hand.add_strength(self, text)
		else
			if !@weakness.include?(hand.name)
				@weakness[hand.name] = text
				hand.add_strength(self, text)
			end
		end
	end

	# Compare the hand of the opponent with the player's.
	def fight(hand)
		puts
		if @strength.has_key?(hand.name)
			puts @strength[hand.name]
			1
		elsif hand.strength.has_key?(@name)
			puts hand.strength[@name]
			-1
		else
			puts "equality"
			0
		end
	end
	def to_s
		@name
	end
end
