require 'pry'

class Owner
  
  @@all = []
  
  attr_reader :species
  attr_accessor :owner, :pets, :name
  
  
  def self.count
    @@all.count
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  
  
  
  def initialize(species)
    @species = species
    @pets = {:cats => [], :dogs => [], :fishes=> []}
    @@all << self
  end
  
  def list_pets
    pets[:pets]
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  
  
  
  
  def say_species
    "I am a #{species}."
  end
  
  
  
  
  #buy and feed fish
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  
  def feed_fish
    pets[:fishes].each {|ff| ff.mood = "happy"}
  end
  
  
  
  
  # buy and play with cat
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def play_with_cats
    pets[:cats].each {|pwc| pwc.mood = "happy"}
  end
  
  
  
  
  # buy and walk dogs
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    pets[:dogs].each {|wd| wd.mood = "happy"}
  end
  
  
  
  
  #sell and change pets mood
  def sell_pets
    pets.each do |type, pet|
      #binding.pry
      pet.each do |chg_mood|
      chg_mood.mood = "nervous"
      end
      pet.clear
  end
end
  
  
  
end
  
