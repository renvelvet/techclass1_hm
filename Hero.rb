require_relative 'Player.rb'

class Hero < Player
    def initialize(name, hitpoint, damage, rate_deflect)
        super(name, hitpoint, damage)
        @rate_deflect = rate_deflect
    end

    def take_hitpoint(damage)
        if rand < @rate_deflect
            puts "#{@name} deflects the attack"
        else
            @hitpoint -= damage
        end
	end
end