class User
  attr_accessor :name, :wins, :losses

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @wins = 0
    @losses = 0
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    check = self.all.find {|user| user.name == name}
    check ? check : check = self.new(name)
    check
  end

  def greeting(name)
    puts "WELCOME TO HANGMAN #{name.upcase}!".cyan
  end

  def play_again?
    puts "DO YOU WANT TO PLAY AGAIN? (Y/N)".cyan
    input = gets.chomp.downcase

    case input
    when "no", "n"
      return false
    when "yes", "y"
      return true
    else
      puts "PLEASE ENTER 'Y' OR 'N'".cyan
      play_again?
    end
  end

end
