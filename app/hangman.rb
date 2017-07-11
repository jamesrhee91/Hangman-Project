class Hangman

  attr_accessor :user

  def initialize(user)
    @board = []
    @errors = ['O', '/', '|', '\\', '|', '/', '\\']
    @word_to_guess = Dictionary.all.sample
    @display_word = @word_to_guess.name.upcase.chars.map {|e| "_"}.join
    @clue = @word_to_guess.clue.upcase
    @answer = @word_to_guess.name.upcase
    @user = user
    @guessed_letter = []
  end

  def display_board
    puts "_____"
    puts "|   |"
    puts "|   #{@board[0]}"
    puts "|  #{@board[1]}#{@board[2]}#{@board[3]}"
    puts "|   #{@board[4]}"
    puts "|  #{@board[5]} #{@board[6]}"
    puts "====="
    puts ""
    puts "CLUE: #{@clue}".yellow
    puts "ANSWER: #{@display_word}".green
    puts "GUESSED LETTERS: #{@guessed_letter.join(', ')}"
  end

  def valid_guess?(input)
    ("A".."Z").include?(input) || !@guessed_letter.include?(input)
  end

  def player_guess(input)

    if @answer.include?(input)
      idx = []
      @answer.chars.each_with_index {|ch, i| idx << i if ch == input}
      until idx.length == 0
        @display_word[idx.shift] = input
      end
      puts "YOU GUESSED CORRECT!".green
    else
      error = @errors.shift
      @board << error
      puts "YOU GUESSED WRONG!".red
    end
    @guessed_letter << input unless @guessed_letter.include?(input)
  end

  def turn
    display_board
    puts "PLEASE ENTER A LETTER BETWEEN A-Z".cyan
    input = gets.strip.upcase
    if input == "EXIT"
      abort("THANKS FOR NOTHING!".cyan)
    elsif @guessed_letter.include?(input)
      puts "PLEASE ENTER A VALID LETTER".red
    elsif valid_guess?(input)
      player_guess(input)
    else
      turn
    end
  end

  def over?
    if @errors.empty?
      @user.losses += 1
      puts "YOU LOST!".red
      return true
    elsif @display_word == @answer
      @user.wins += 1
      puts "YOU WON!".green
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
    puts "#{user.name} : #{user.wins} WIN(S) - #{user.losses} LOESS(ES)".cyan
  end

  # def display_menu
  #   puts " _                                             "
  #   puts "| |                                            "
  #   puts "| |__   __ _ _ __   __ _ _ __ ___   __ _ _ __  "
  #   puts "| '_ \\ / _` | '_ \\ / _` | '_ ` _ \\ / _` | '_ \\ "
  #   puts "| | | | (_| | | | | (_| | | | | | | (_| | | | |"
  #   puts "|_| |_|\\__,_|_| |_|\\__, |_| |_| |_|\\__,_|_| |_|"
  #   puts "                   __/ |                       "
  #   puts "                  |___/                        "
  #
  #   puts "1. NEW GAME".magenta
  #   puts "2. LEADERBOARDS".magenta
  #   puts "3. EXIT".magenta
  # end
  #
  # def menu
  #   self.display_menu
  #   puts "WHAT WOULD YOU LIKE TO DO? (1, 2, 3)".cyan
  #   input = gets.strip.upcase
  #   case input
  #   when "LEADERBOARDS", "2"
  #     self.stats
  #     menu
  #   when "EXIT", "3"
  #     abort("THANKS FOR NOTHING!".cyan)
  #   end
  # end
  #
  # def stats
  #   User.all.sort_by do |player|
  #     player.wins
  #   end.reverse.each do |player|
  #     puts "#{player.name} = wins:#{player.wins} | losses:#{player.losses}".cyan
  #   end
  # end


end
