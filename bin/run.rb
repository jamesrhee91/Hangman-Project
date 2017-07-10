#!/usr/bin/env ruby

require_relative '../config/environment.rb'

puts "Enter your name:"
user_name = gets.chomp
user = User.find_or_create_by_name(user_name).name
greeting(user)

hangman = Hangman.new
hangman.play
