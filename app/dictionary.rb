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


apple = Dictionary.new("APPLE", "RED, FRUIT")
banana = Dictionary.new("BANANA", "YELLOW, MONKEY")
coconut = Dictionary.new("coconut", "if you like pina coladas")
microwave = Dictionary.new("microwave", "heat, quick")
beekeeper = Dictionary.new("beekeeper", "buzz")
flapjack = Dictionary.new("flapjack", "syrup, butter")
rhythm = Dictionary.new("rhythm", "music")
galaxy = Dictionary.new("galaxy", "star stuff")
jigsaw = Dictionary.new("jigsaw", "puzzle")
xylophone = Dictionary.new("xylophone", "percussion")
wizard = Dictionary.new("wizard", "Dumbledore")
bandwagon = Dictionary.new("bandwagon", "Warriors and Patriots fans")
haiku = Dictionary.new("haiku", "poem")
matrix = Dictionary.new("matrix", "neo")
blizzard = Dictionary.new("blizzard", "better get a shovel...")
banjo = Dictionary.new("banjo", "strumming")
vodka = Dictionary.new("vodka", "russia, drink")
voodoo = Dictionary.new("voodoo", "doll")
blizzard = Dictionary.new("blizzard", "better get a shovel...")
bikini = Dictionary.new("bikini", "beach")
puppy = Dictionary.new("puppy", "woof")
witchcraft = Dictionary.new("witchcraft", "The Crucible")
sphinx = Dictionary.new("sphinx", "Ancient Egypt")
quiz = Dictionary.new("quiz", "pop")
juicy = Dictionary.new("juicy", '"It was all a dream"')
oxygen = Dictionary.new("oxygen", "Breath")
zipper = Dictionary.new("zipper", "jacket, jeans, gets stuck")
jockey = Dictionary.new("jockey", "Seabisquit")
cobweb = Dictionary.new("cobweb", "spiders")
bagpipes = Dictionary.new("bagpipes", "instrument")
zombie = Dictionary.new("zombie", "walking dead")
pneumonia = Dictionary.new("pneumonia", "illness")
unknown = Dictionary.new("unknown", "don't know")
pajamas = Dictionary.new("pajamas", "goodnight")
knapsack = Dictionary.new("knapsack", "books, straps")
jukebox = Dictionary.new("jukebox", "kick it Fonz")
kayak = Dictionary.new("kayak", "water, boat")
