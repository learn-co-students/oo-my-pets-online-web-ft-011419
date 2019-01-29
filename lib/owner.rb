require 'pry'
class Owner
  attr_accessor :pets, :name, :mood
  attr_reader :species
  @@all = []
  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @name = name
    @@all << self
  end

  def pets
    @pets
  end

  def say_species
    "I am a #{@species}."
  end


  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def buy_cat(name)
    new_kitty = Cat.new(name)
    @pets[:cats] << new_kitty
  end
  def buy_dog(name)
    new_doggy = Dog.new(name)
    @pets[:dogs] << new_doggy
  end

  def buy_fish(name)
    new_fishy = Fish.new(name)
    @pets[:fishes] << new_fishy
  end

  def feed_fish
    @pets[:fishes].map {|fish| fish.feeding}
  end

  def play_with_cats
    @pets[:cats].map {|cat| cat.playing}
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.walking}
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end



  def sell_pets
    @pets.each do |type, pets|
      pets.map {|pet| pet.mood= "nervous"}
    end
    @pets.clear
  end


end
