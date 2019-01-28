class Owner
  attr_accessor :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    {:cats => [], :dogs => [], :fishes => []}
  end

  def buy_fish

  end

end
