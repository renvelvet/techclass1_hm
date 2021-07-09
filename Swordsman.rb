require_relative 'Mongol.rb'

class Swordsman < Mongol
    def initialize()
        super("Swordsman", 100, 50)
    end

    def attack(enemy)
		puts "#{@name} slashes #{enemy.name} with #{@damage} damage\n"
		enemy.take_hitpoint(@damage)
	end
end