#!/usr/bin/ruby

require_relative 'Class/Hand'
require_relative 'Class/Humain'
require_relative 'Class/Computer'

score_max = 2

# ################################################### #
# 		rock - paper - scissors		      #
# ################################################### #
rock = Hand.new
rock.name = "rock"

paper = Hand.new
paper.name = "paper"

scissors = Hand.new
scissors.name = "scissors"

rock.add_strength(scissors, "rock crushes scissors")
paper.add_strength(rock, "paper covers rock")
scissors.add_strength(paper, "scissors cut paper")

simple_hands = [paper, rock, scissors]
###################################################

system("/usr/bin/clear")
puts "Ready to play Shifumi? Here we go!\n"

# Make the player
player = Humain.new
player.hands = simple_hands

# Make the computer
computer = Computer.new
computer.hands = simple_hands

while player.score < score_max and computer.score < score_max
	# As long the player don't choose a good hand
	while !player.get_hand
	end
	computer.get_hand
	system("/usr/bin/clear")
	player.fight(computer)
	puts "Score player: " + player.score.to_s + "\n" + \
		"Score computer: " + computer.score.to_s + "\n\n"
end

if player.score == score_max
	puts "You won!\n"
else
	puts "You loose!\n"
end
puts "See you on rock-paper-scissors."
