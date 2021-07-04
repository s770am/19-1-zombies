require_relative 'zombie'
require_relative 'human'

class City


    def initialize 
puts "welcome to my game"
Human.spawn(10)
Zombie.spawn(10)
    end
#menu/input
def menu
    while true
puts "press your key to continue"
display_options
selection = gets.chomp
selector(selection)
end
end

#dispaly options
def display_options
puts "1 to start a new day"
puts "2 to display the charaters"
puts "3 to exit the game"
end

# selector
def selector(selection)
case selection.to_i
when 1 then new_day
    when 2 then display_characters
        when 3 then exit(true)
        end
end



# display charicters
def display_characters
    puts "-----------------------"
    puts "the characters in the game are:"
Character.display
puts "-----------------------"
    end

# newday
def new_day
#spawn
Human.spawn(Character.humans_num / 2)
#encounter
Character.meeting
end

end

dovid = City.new
dovid.menu