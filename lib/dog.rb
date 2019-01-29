class Dog
    attr_accessor :owner,:mood
    attr_reader :name

    def initialize(name, mood = "nervous")
      @name = name
      @mood = mood
    end

    def mood
      @mood
    end
    def walking
      @mood = "happy"
    end
end
