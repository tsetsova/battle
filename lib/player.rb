class Player

	attr_reader :name, :health

	def initialize(name: "Mug")
		@name = name
		@health = 100
	end

	def receive_damage(damage = 2)
		@health -= damage
	end

end
