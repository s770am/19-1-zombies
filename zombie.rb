require_relative 'character'

class Zombie < Character
@@plague_level = 0

    def initialize
        super("zombie " + Character.name_generator, 1, 2, 5, 5)
    increase_plague_level
            end

    def self.spawn(num)
num.times do
super("z", Zombie.new)
end
    end

    def increase_plague_level
@@plague_level += 1
    end

    def attack
super(@@plague_level / 10)
    end

def plague_level
   @@plague_level 
end

end
