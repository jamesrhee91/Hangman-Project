#!/usr/bin/env ruby

require_relative '../config/environment.rb'
require 'pry'



loop do
  menu

    puts "PLEASE ENTER YOU NAME:".cyan
    user_name = gets.chomp.upcase
    abort("THANKS FOR NOTHING!") if user_name == "EXIT"
    user = User.find_or_create_by_name(user_name)
    greeting(user.name)


    # game = Hangman.new(user)
  #
  loop do
    game = Hangman.new(user)
    # game.display_menu
    game.play

    break if !play_again?
  end

  # game.menu
end
