class Question
  def initialize(player)
    first_num = rand(1..20)
    second_num = rand(1..20)
    puts "\n#{player.name}: What does #{first_num} plus #{second_num} equal?"
    print "Your answer: "
    player_answer = gets.chomp.to_i
    correct_answer = first_num + second_num
    if player_answer == correct_answer
      puts "\n#{player.name}: YES! You are correct."
      puts "#{player.name}: #{player.lives}/3"
    else
      puts "\n#{player.name}: Seriously? NO!"
      player.lives = player.lives - 1
      puts "#{player.name}: #{player.lives}/3"
    end
  end
end