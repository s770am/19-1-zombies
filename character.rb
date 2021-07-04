class Character

@@game_characters = [[],[]]
@@id = 0

    def initialize(name, min_speed, min_strength, max_speed, max_strength)
@name = name
@min_speed = min_speed
@min_strength = min_strength
@max_speed = max_speed
@max_strength = max_strength
    end

    attr_accessor :name, :min_speed, :min_strength, :max_speed, :max_strength


def self.spawn(type, obj)
@@game_characters[type_of(type)] << obj
end

def self.name_generator
names = ["bob", "john", "marry", "paul", "sam", "denice", "herrbert", "david", "jeanah", "abby"]
@@id += 1
return names[rand(names.length - 1)] + @@id.to_s
end

def self.display 
if @@game_characters[0] != []
    puts "the zombies are "
    @@game_characters[0].each do |zombie|
        puts zombie.name
    end
end
if @@game_characters[1] != []
    puts "the humans are "
    @@game_characters[1].each do |human|
        puts human.name
    end
end
    end

    def attack(bonus = 0)
rand(@min_strength..(@max_strength + bonus))
    end

    def run
        rand(@min_speed..@max_speed)
            end

            def game_characters()
                @@game_characters
            end


            def self.meeting 
amount = (@@game_characters[0].size + @@game_characters[1].size) / 2
amount.times do 
    if (@@game_characters[0].size == 0)
        puts "the humans have reclaimed the land"
        exit(true)
    end
    if (@@game_characters[1].size == 0)
        puts "the humans have lost the undead have taken the land"
        exit(true)
    end
Character.encounter(Character.my_random(@@game_characters[0]), Character.my_random(@@game_characters[1]))
puts ".................."
end
            end

            def self.encounter(zombie, person)
                if !Character.run_away(zombie, person)
                Character.battle(zombie, person)
                end
            end

            def self.run_away(zombie, person)
if zombie.run > person.run
    puts "#{zombie.name} has caught #{person.name}"
    return false
else
    puts "#{person.name} has fled #{zombie.name}"
    return true
end
            end

            def self.battle(zombie, person)
if zombie.attack > person.attack
    puts "#{zombie.name} has killed #{person.name}"
    person.die("p")
else 
    puts "#{person.name} has killed #{zombie.name}"
    person.gain_expierence
    zombie.die
end
            end

def die(person = "z")
if person == "p"
    self.name = "zombie " + self.name
    @@game_characters[0] << self
@@game_characters[1].delete(self)
else 
@@game_characters[0].delete(self)
end
end



def self.humans_num
return @@game_characters[1].size
end

def self.zombie_num
    return @@game_characters[0].size
    end


def self.type_of(type)
if type.start_with?("z")
return 0
else
    return 1
end
end

def self.my_random(array)
    num = rand(array.size - 1)
return array[num]
end

end

