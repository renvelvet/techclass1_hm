require_relative 'Mongol.rb'

class Spearman < Mongol
    def initialize()
        super("Spearman", 120, 60)
    end

    def attack(enemy)
		puts "#{@name} thrusts #{enemy.name} with #{@damage} damage\n"
		enemy.take_hitpoint(@damage)
	end
end