class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@count = 1
  @@all = []

  def initialize(name)
    @@count += 1
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.count
    @@count
  end

  def self.all
    @@all
  end

  def buy_fish(name)
    new_fish = Fish.new(name)





end
