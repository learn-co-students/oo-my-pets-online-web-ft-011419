require 'pry'

class Owner
  
  attr_accessor :name, :pets, :species
  
  @@all = []
  
  def initialize(pets, species, name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count = self.count
  end  

  def self.all 
    @@all 
  end  
 
  def name 
    owner.name = name 
  end  
 
  def buy_fish
    @pets << fish
  end   
  
  def walk_dogs 
  
  end  
  
end