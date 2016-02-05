class Player

	attr_reader :name, :health

	def initialize(name: "Mug")
		@name = name
		@health = 100

	end

	def reduce_hp(damage)
		@health -= damage
	end
end
