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

def die(type)
@@game_characters.delete(self)
type.delete(self)
end

def self.spawn(type, obj)
@@game_characters[type_of(type)] << obj
end

def self.name_generator
names = ["bob", "john", "marry", "paul", "sam", "denice", "herrbert"]
@@id += 1
return names[rand(names.length - 1)] + @@id.to_s
end

def self.display 
if @@game_characters[0] != []
    @@game_characters[0].each do |zombie|
        puts zombie.name
    end
end
if @@game_characters[1] != []
    @@game_characters[1].each do |human|
        puts human.name
    end
end
    end

def self.type_of(type)
if type.start_with?("z")
return 0
else
    return 1
end
end

end

