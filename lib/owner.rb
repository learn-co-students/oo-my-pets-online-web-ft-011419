class Owner
  @@owners = [] 
  attr_reader :species
  attr_accessor :name, :pets
  
  def initialize(species, 
                  pets = {
                     :fishes => [], 
                     :dogs => [], 
                     :cats => []})
    @species = species
    @pets = pets 
    @@owners << self 
  end 
  
  def say_species
    return "I am a #{self.species}."
  end 
  
  def self.count 
    @@owners.length   
  end 
  
  def self.all 
    @@owners 
  end 
  
  def self.reset_all 
    @@owners.clear 
  end 
  
  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name) 
  end 
  
  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end 
  
  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end 
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats 
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end 
  
  def feed_fish 
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end 
  
  def sell_pets
    @pets.each do |species, for_sale|
      for_sale.each {|pet| pet.mood = "nervous"}
    end
    @pets = {}
  end
  
  def list_pets 
        "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end 
  
end