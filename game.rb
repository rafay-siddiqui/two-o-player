class Game
  def initialize
    puts "\nThis is TwO-O-Player Math Duel!"
    print "\nPlayer One, Enter Your Name:"
    @player_one = Player.new(gets.chomp)
    print "\nPlayer Two, Enter Your Name:"
    @player_two = Player.new(gets.chomp)
    puts "\nWelcome #{@player_one.name} and #{@player_two.name}...\nGet ready for your first question!"
    ask_question
  end

  def new_turn
    if @playing == @player_one
      @playing = @player_two
      @winner = @player_two
    else @playing == @player_two
      @playing = @player_one
      @winner = @player_two
    end
  end

  def ask_question
    new_turn
    Question.new(@playing)
    if @playing.lives == 0
      puts "\n WRONG! YOU LOSE"
      puts "\n---- GAME OVER ----"
      puts "#{@winner.name} wins with a score of #{@winner.lives}/3!"
    else
      puts "\n---- NEW TURN ----"
      ask_question
    end
  end
end