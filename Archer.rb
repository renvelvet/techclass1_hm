require_relative 'Mongol.rb'

class Archer < Mongol
    def initialize()
        super("Archer", 80, 40)
    end

    def attack(enemy)
		puts "#{@name} shoots an arrow at #{enemy.name} with #{@damage} damage\n"
		enemy.take_hitpoint(@damage)
	end
end