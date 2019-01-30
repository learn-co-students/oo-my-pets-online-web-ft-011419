class Owner
  
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(pets, species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end  

  def self.all 
    @@all 
  end  
 
  def buy_fish
    @pets << fish
  end   
  
end