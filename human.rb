require_relative 'character'

class Human < Character

    def initialize
super(Character.name_generator, 2, 2, 6, 5)
    end

    def self.spawn(num)
        num.times do
        super("h", Human.new)
        end
            end

       def gain_expierence
        @min_strength+= 1
        @max_strength += 1
        puts "#{self.name} has leveled up"
       end

end