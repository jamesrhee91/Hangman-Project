require 'pry'
require 'colorize'


require_relative '../app/user.rb'
require_relative '../app/dictionary.rb'
require_relative '../app/hangman.rb'



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

def display_menu
  puts " _                                             "
  puts "| |                                            "
  puts "| |__   __ _ _ __   __ _ _ __ ___   __ _ _ __  "
  puts "| '_ \\ / _` | '_ \\ / _` | '_ ` _ \\ / _` | '_ \\ "
  puts "| | | | (_| | | | | (_| | | | | | | (_| | | | |"
  puts "|_| |_|\\__,_|_| |_|\\__, |_| |_| |_|\\__,_|_| |_|"
  puts "                   __/ |                       "
  puts "                  |___/                        "

  puts "1. NEW GAME".magenta
  puts "2. LEADERBOARDS".magenta
  puts "3. EXIT".magenta
end

def menu
  # self.display_menu
  display_menu
  puts "WHAT WOULD YOU LIKE TO DO? (1, 2, 3)".cyan
  input = gets.strip.upcase
  case input
  when "LEADERBOARDS", "2"
    stats
    menu
  when "EXIT", "3"
    abort("THANKS FOR NOTHING!".cyan)
  end
end

def stats
  players = User.all.sort_by {|player| player.wins}
  if players.empty?
    puts "THERE ARE NO SAVED PROFILES"
  else
    players.reverse.each do |player|
    puts "#{player.name} = WINS:#{player.wins} | LOSSES:#{player.losses}".magenta
    end
  end
end
