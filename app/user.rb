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
    # binding.pry
    check = self.all.find {|user| user.name == name}
    check ? check : check = self.new(name)
    check
  end
end
