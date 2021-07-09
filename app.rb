require_relative 'Hero.rb'
require_relative 'Mongol.rb'
require_relative 'Archer.rb'
require_relative 'Swordsman.rb'
require_relative 'Spearman.rb'

jin = Hero.new("Jin Sakai", 100, 50, 0.8)
archer = Archer.new
swordsman = Swordsman.new
spearman = Spearman.new
villains = [archer, swordsman, spearman]

def print_turn(number)
    puts "========= Turn #{number} ========="
    puts "\n"
end

def hero_turn(hero, enemies)
    hero.attack(enemies[rand(enemies.size)])
end

def delete_villain(villains)
    villains.each do |villain|
        villains.delete(villain) if villain.die? || villain.flee?
    end
    puts "\n"
end

def villain_turn(villains, hero)
    villains.each do |villain|
        villain.attack(hero)
    end
    puts "\n"
end

# Gameplay
i = 1
until (jin.die? || villains.empty?) do
    print_turn(i)

    puts jin
    villains.each do |villain|
        puts villain
    end
    puts "\n"

    hero_turn(jin, villains)
    delete_villain(villains)
    villain_turn(villains, jin)

    i += 1
end