class Dictionary
  attr_accessor :name, :clue

  @@all = []

  def initialize(name, clue)
    @name = name
    @clue = clue
    @@all << self
  end

  def self.all
    @@all
  end
end


apple = Dictionary.new("apple", "red, tasty, fruit")
banana = Dictionary.new("banana", "yellow, tasty, fruit")
cat = Dictionary.new("cat", "furry and annoying")


word_to_guess = Dictionary.all.sample.name # and the answer
clue = Dictionary.all.sample.clue
