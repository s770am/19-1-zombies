require_relative 'character'

class Zombie < Character

@@zombies = []

    def initialize
        super("zombie " + Character.name_generator, 1, 3, 5, 8)
            end

    def self.spawn(num)
num.times do
super("Z", Zombie.new)
end
    end

end

Zombie.spawn(10)
Character.display