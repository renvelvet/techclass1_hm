require_relative 'Player.rb'

class Mongol < Player
    def initialize(name, hitpoint, damage)
        super("Mongol #{name}", hitpoint, damage)
        @flee_percentage = 0.5
        @fled = false
    end

    def take_hitpoint(damage)
        @hitpoint -= damage
        if @hitpoint <= 50
            flee if rand < @flee_percentage
        end
    end

    def flee
        @fled = true
        puts "#{@name} has fled the battlefield with #{@hitpoint} hitpoint left\n"
	end

    def flee?
        @fled
    end
end