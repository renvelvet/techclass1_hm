require_relative 'Player.rb'

player1 = Player.new("Jin Sakai", 100, 50)
player2 = Player.new("Khotun Khan", 500, 50)

puts player1
puts player2
puts "\n"

loop do 
    player1.attack(player2)
    player2.take_hitpoint(player1.damage)
    puts player2
    puts "\n"
    break if player2.die?

    # Only player1 aka "Jin" has ability to deflect
    player2.attack(player1)
    if rand(100) <= 80
        puts "#{player1.name} deflects the attack"
    else
        player1.take_hitpoint(player2.damage)
    end
    puts player1
    puts "\n"
    break if player1.die?
end