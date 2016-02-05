class Player

	attr_reader :name, :health

	def initialize(name: "Mug")
		@name = name
		@health = DEF_HP
	end

	def receive_damage(damage = 2)
		@health -= damage
	end

	private
		DEF_HP = 100
end
