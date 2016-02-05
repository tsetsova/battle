require_relative 'player'

class Game

	attr_reader :player_1, :player_2, :turn, :opponent

	def initialize(player_1: "Mug", player_2:  "Monkey")
		@player_1 = player_1
		@player_2 = player_2
		@turn = @player_1
		@opponent = @player_2
		@attacker = @player_1
	end

	def attack(player)
		player.receive_damage
		@attacker = @opponent
		@opponent = @attacker
 		change_turn(@opponent)
	end

	def change_turn(player)
		@turn = player
	end

	# def opponent
	# 	if @turn == @player_2
	# 	 	@player_1 
	# 	else
	# 		@player_2
	# 	end
	# end
end