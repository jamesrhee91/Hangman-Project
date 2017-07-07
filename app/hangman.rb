class Hangman

  def initialize
    @board = [" ", " ", " ", " ", " ", " "]
    @word_to_guess = Dictionary.all.sample#.name.chars # and the answer ["a", "p", "p", "l", "e"]
    @hidden_letters = @word_to_guess.name.chars.map {|e| "_"} # ["a", "p", "p", "l", "e"]
    @clue = @word_to_guess.clue
    binding.pry
  end

  def display_board
    puts "_____"
    puts "|   |"
    puts "|   #{@board[0]}"
    puts "| #{@board[2]}#{@board[1]}#{@board[3]}"
    puts "|   #{@board[4]}#{@board[5]}"
  end

  def display_word
    puts @hidden_letters.join
    puts @clue
  end

  def player_guess(guessed_letter)
    if @word_to_guess.name.chars.index(guessed_letter)
      idx = @word_to_guess.name.chars.index(guessed_letter)
      @hidden_letters[idx] = guessed_letter
      puts "You guess correct!"
    else
      # add incorrect guess to hangman board
      puts "You guessed wrong!"
    end
  end

  def turn
    display_board
    display_word
    puts "Please enter a letter between A-Z"
    input = gets.strip.downcase
    player_guess(input)
  end

  def play
    @word_to_guess.name.length.times do |e|
      turn
    end

  end

end
