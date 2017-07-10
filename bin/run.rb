#!/usr/bin/env ruby

require_relative '../config/environment.rb'
require 'pry'



loop do

  puts "Enter your name:"
  user_name = gets.chomp
  user = User.find_or_create_by_name(user_name)
  greeting(user.name)


  hangman = Hangman.new(user)
  hangman.play

  break if !play_again?

end
