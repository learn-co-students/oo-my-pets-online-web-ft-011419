class Cat
  
  @@all = []
  
attr_reader :name 
attr_accessor :mood, :cat

@cat = []

def initialize(name)
  @name = name
  @cat = cat
  @mood = "nervous"
end

def self
  @@all
end

def self.save
  @@all << self
end
end