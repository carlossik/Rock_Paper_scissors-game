
class Rockpapergame
require 'colorize'
  attr_reader :player,:computer
  puts "\n\nWelcome to CarloRockPaper Game\nPress r for rock\nPress s for Scissors\nPress p for Paper\n\nPress any other key to terminate this  app\n".colorize(:color => :black, :background => :light_blue)

def initialize
  @computer = "rsp"[rand(3)].to_s  #This is the random selection by the computer

  @player = gets.chomp.downcase  #This captures the user input

end

def get_user_input
return @player,@computer
end


#This is intended to validate the user input
  def validate_user_input()
    invalid_input = /[rps]/
    user_input = @player
    until
        user_input.match invalid_input
      puts "Thanks for trying our app, please come back later"
      exit
    end
  else

  end

#This is not used .validation to be implemented later
  def second_validation
    invalid_input = /[rps]/
    user_input = @player
    case [user_input,invalid_input]
      when invalid_input
        puts "This is not a valid option"
        get_user_input

    end
  end
#This method takes values from the class and computes if a selection is a win or lose or tie
  #{ |file| file.write("your text") }
  def playgame
    values = File.new('values1.txt','w')

      get_user_input
      case [player,computer]
     when  ['r','r'],['s','p'],['r','s']
      puts  "\n\nYou win!".colorize(:color => :green,:background => :light_blue)


      when  ['r','r'],['s','s'],['p','p']
    puts  "\n\nYou tied!"

        else

      puts "\n\nYou Lose!".colorize(:color => :red, :background => :light_blue)

         end
    puts "The computer chose: #{computer.upcase}\n".colorize(:color => :black,:background => :light_blue)
       end
    end





myrock = Rockpapergame.new
 myrock.playgame






