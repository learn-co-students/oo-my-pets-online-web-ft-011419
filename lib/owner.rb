require 'pry'

class Owner

  attr_accessor :name, :pets
  
  attr_reader :species
  
  @@count = 0
  @@all = []
  
  def initialize(pets, species = "human")
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
    @@count += 1
  end  
  
  def say_species
    "I am a human."
  end  
  
  def self.count 
    @@all.size
  end  

  def self.all 
    @@all 
  end  
 
  def self.name 
    name = self.name
  end  
 
  def buy_fish(name)
   self.pets[:fishes] << Fish.new(name)
    @pets
  end   
  
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end  

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end  

  def walk_dogs 
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end  
  end  
  
  def play_with_cats 
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end  
  
  def feed_fish 
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end  
  
  def sell_pets 
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end  
  end 

  def list_pets 
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end  
  
  def self.reset_all
    @@all.clear
  end  
 
end