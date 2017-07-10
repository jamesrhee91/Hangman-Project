class Hangman

  attr_accessor :user

  def initialize(user)
    @board = []# ['O', '|', '/', '\\', '|', '/', '\\']
    @errors = ['O', '|', '/', '\\', '|', '/', '\\']
    @word_to_guess = Dictionary.all.sample
    @display_word = @word_to_guess.name.chars.map {|e| "_"}.join # ["a", "p", "p", "l", "e"]
    @clue = @word_to_guess.clue
    @answer = @word_to_guess.name
    @user = user
  end

  def display_board
    puts "_____"
    puts "|   |"
    puts "|   #{@board[0]}"
    puts "|  #{@board[2]}#{@board[1]}#{@board[3]}"
    puts "|   #{@board[4]}"
    puts "|  #{@board[5]} #{@board[6]}"
    puts "====="
    puts ""
    puts "Clue: #{@clue}"
    puts "Answer: #{@display_word}"
  end

  def valid_guess?(input)
    ("a".."z").include?(input)
  end

  def player_guess(input)

    if @answer.include?(input)
      idx = []
      @answer.chars.each_with_index {|ch, i| idx << i if ch == input}
      until idx.length == 0
        @display_word[idx.shift] = input
      end
      puts "You guessed correct!"
    else
      error = @errors.shift
      @board << error
      puts "You guessed wrong!"
    end
  end

  def turn
    display_board
    puts "Please enter a letter between a-z"
    input = gets.strip.downcase
    if valid_guess?(input)
      player_guess(input)
    else
      turn
    end
  end

#  def over?
#    if @errors.empty? || @display_word == @answer
#      return true
#    end
#    false
#  end

def over?
  if @errors.empty?
    @user.losses += 1
    puts "YOU LOST"
    return true
  elsif @display_word == @answer
    @user.wins += 1
    puts "YOU WON"
    return true
  end
  false
end

  def play
    until over?
      turn
    end
    display_board
    display_stats
  end

  def display_stats
    puts "#{user.name} : #{user.wins} win(s) - #{user.losses} loss(es)"
  end

end
