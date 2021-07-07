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

    player2.attack(player1)
    puts player1
    puts "\n"
    break if player1.die?
end