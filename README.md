# Ruby Final Project - A Command Line Interface Program

* Make your application interactive (take user input and display some output)
* Use good object oriented principles

## Your task

Your task is to build out hangman.  Users guess letters, and depending on the word, each letter is filled in.  Think about how to model the program such that we could hold onto a user history, and see the number of games a user has won or lost.  Build this out in pure ruby.  You can use the require_all gem, and the pry gem.  Do not use any sql.  

## Setup

You'll need to build this project from scratch, but your project should have a good, clean directory structure and looks similar to other gems. Following the directory structure common in other gems will make it easier for other developers to pick up your code and know where to find things. You're directory/file structure should look something like this:

```bash
├── README.md
├── LICENSE
├── .rspec
├── bin
│   └── run
├── app
│   └── models
├── tools
│   └── console.rb

```

### `bin/run`
The bin folder will hold your runner file which starts the program and should require only your environment file. You should be able to start your program by running `bin/run` in the command line. Remeber to put `#!/usr/bin/env ruby` at the top of your runner so that the command line knows to run it as a ruby file.

### `config/environment.rb`
The config folder should have your environment file, which should require all the other files that are needed to run your project, and load Bundler to require all of the dependencies listed in your Gemfile

### `README.md`
The README should be well written and clear. Anyone reading your readme should know exactly what your app/gem does, how to get it running on their computer, and how to contribute to it.

## Timeframe
# Hangman-Project
# Hangman-Project
# Hangman-Project
