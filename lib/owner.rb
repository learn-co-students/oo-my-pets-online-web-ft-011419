class Owner
  @@count =  0 
  @@all = [] 
  def initialize(name)
  
    @@all << self 
    @@count += 1
    @species = name
    @pets = {"fishes" => [], "cats" => [], "dogs" => [] }
  end
  attr_accessor :name , :pets
  attr_reader :species
  def self.reset_all
    @@count = 0 
    @@all = []
  end
  def all 
    @@all
  end 
  def count
    @@count 
  end
  def say_species
    return "I am a #{species}"
  end
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
    def sell_pets
      pets.each do |type, pet|
        pet.each do |x|
          pet.mood = "nervous"
        end
        type = []
     end
   end
  
end