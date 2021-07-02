require_relative 'character'

@@humans = []

class Human < Character

    def initialize(name)
super(Character.name_generator, 2, 2, 8, 5)
    end

end