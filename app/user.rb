class User
  attr_accessor :name, :wins, :loses

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
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
