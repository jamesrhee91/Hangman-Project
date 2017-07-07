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
