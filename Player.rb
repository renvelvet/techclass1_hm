class Player
	attr_reader :name, :damage

	def initialize(name, hitpoint, damage)
		@name = name
		@hitpoint = hitpoint
		@damage = damage
	end

	def to_s
		"#{@name} has #{@hitpoint} hitpoint and #{@damage} attack damage\n"
	end

	def attack(enemy)
		puts "#{@name} attacks #{enemy.name} with #{@damage} damage\n"
		enemy.take_hitpoint(@damage)
	end

	def take_hitpoint(damage)
		@hitpoint -= damage
	end

	def die?
		if @hitpoint <= 0
			puts "#{@name} dies\n"
			true
		end
	end

end
