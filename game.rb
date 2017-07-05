require_relative 'players'
require_relative 'questions'

P1 = Player.new('Player1')
P2 = Player.new('Player2')


puts "|| Welcome to Two-O-Player"
puts "Players get ready!!"

def turn(current_player)

  puts "#{current_player.name}: What does #{Question.num1} plus #{Question.num2} equal?"

  answer = gets.chomp

  if Question.validation(answer)
    puts "That is correct! Well done!"
  else
    puts "Sorry! That is just wrong!"
    current_player.incorrect
  end

  puts "#{P1.name}: #{P1.life}/3 vs #{P2.name}: #{P2.life}/3"

end


loop do
  turn(P1)
  break puts "Player 2 wins with a score of #{P2.life}/3" if (P1.gameover)
  turn(P2)
  break puts "Player 1 wins with a score of #{P1.life}/3" if (P2.gameover)
  puts " "
  puts "************** next turn **************"
end


puts "************** GAME OVER **************"