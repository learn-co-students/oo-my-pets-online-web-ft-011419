require "pry"


class Owner
  @@all = []
   
  attr_accessor :owner, :name, :pets 
  attr_reader :species 
  
   
  
  
 
  def initialize (species, owner = "human")
    @species = species
    @owner = owner 
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
    #binding.pry
  end 
 
  def self.all
  
    @@all
  #binding.pry
  end 
  
  def self.count 
    @@all.size 
  end 
  
  def self.reset_all 
    @@all.clear
  end 
  
  def say_species
   "I am a human."
  end 
  
  def buy_fish(name) 
    pets[:fishes] << Fish.new(name)
    
  # binding.pry 
    
  end 
  
   def buy_cat(name) 
    pets[:cats] << Cat.new(name)
    
  # binding.pry 
    
   end 
  
   def buy_dog(name) 
    pets[:dogs] << Dog.new(name)
    
  # binding.pry 
    
   end 
   
   def walk_dogs
       pets[:dogs].each{|dog| dog.mood= "happy"}
   end 
   
   def play_with_cats 
      pets[:cats].each{|cat| cat.mood= "happy"}
   end 
  
   def feed_fish
   pets[:fishes].each{|fish| fish.mood= "happy"}
   end 
   
   def sell_pets 
     pets[:dogs].each{|dog| dog.mood= "nervous"}
     pets[:cats].each{|cat| cat.mood= "nervous"}
     pets[:fishes].each{|fish| fish.mood= "nervous"}
     pets.clear
     
    # binding.pry
   end 
   
   def list_pets
    
      "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."

     #binding.pry
     
    end 
end