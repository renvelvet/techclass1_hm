require_relative 'Player.rb'

player1 = Player.new("Jin Sakai", 100, 50)
player2 = Player.new("Khotun Khan", 500, 50)

puts player1
puts player2
puts "\n"

loop do 
    player1.attack(player2)
    puts player2
    puts "\n"
    break if player2.die?

    # Only player1 aka \"Jin\" has ability to deflect
    if rand(100) <= 80
        puts "#{player1} deflects the attack"
    else 
        player2.attack(player1)
    end
    puts player1
    puts "\n"
    break if player1.die?
end