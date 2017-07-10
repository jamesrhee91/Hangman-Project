require 'pry'

require_relative '../app/dictionary.rb'
require_relative '../app/hangman.rb'
require_relative '../app/user.rb'



def greeting(name)
  puts "Welcome to Hangman #{name}!"
end

def welcome_back(name)
  puts "Welcome back #{name}!"
end

def valid_response?(response)
  response.downcase == "yes" || response.downcase == "no"
end

def play_again?
  puts "Do you want to play again?"
  input = gets.chomp

  if valid_response?(input)
    if input == "no"
      return false
    else
      return true
    end
  else
    puts "Please enter 'yes' or 'no'"
    play_again?
  end
end
