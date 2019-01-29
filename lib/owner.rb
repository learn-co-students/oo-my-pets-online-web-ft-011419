require 'pry'
class Owner
  attr_accessor   :name, :mood, :pets
  attr_reader :species ,   :name
  @@all= []
    def initialize(species)
      @species = species

      @@all<< self
      @pets= {:fishes=>[] ,:cats=>[], :dogs=>[]}

    end
#class methods only
  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  #Instacne methods only
  def say_species
    return "I am a human."
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    @pets[:cats] <<Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

    def play_with_cats
      @pets[:cats][0].mood = "happy"
    end
    def feed_fish
      @pets[:fishes][0].mood = "happy"
    end

    def sell_pets
      @pets.each  do  |k,v|
        #binding.pry
          v.reject! do |pets|
            pets.mood = "nervous"
          end
          v.clear
      end
    end



        def list_pets
          "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
        end


end
