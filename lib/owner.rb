class Owner
  attr_accessor   :name
  attr_reader :species , :pets,  :name
  @@all= []
    def initialize(species)
      @species = species
      @pets= {:fishes=>[] ,:cats=>[], :dogs=>[]}
      @@all << species
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

  def buy_fish(fish)

@pets[:fishes] << fish

  end




end
