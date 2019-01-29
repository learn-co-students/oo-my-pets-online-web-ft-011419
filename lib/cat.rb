class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def mood
    @mood
  end

  def playing
    @mood = "happy"
  end



end
