class MovieTimes::CLI 
  
  def call 
    list_movies
    menu
    goodbye
  end 
  
  def list_movies
    # here doc - http://blog.jayfields.com/2006/12/ruby-multiline-strings
    puts "Coming Soon to a Theatre Near You:"
    puts #<<–DOC.gsub /^\s*/, ''
    puts  "1.  Fast & Furious - Hobbs & Shaw - 2019"
    puts  "2.  Dora and the Lost City of Gold - 2019"
    #DOC  
  end 
  
  def menu
    puts "Enter the number of the movie you'd like to see or type list to see movie times again or type exit:"
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on movie 1..."
      when "2"
        puts "More info on movie 2..."
      when "list"
        list_movies
      else
        puts "Not sure what you'd like to see, type list or exit."
      end 
    end 
  end 
  
  def goodbye
    puts "See you tomorrow for more movie releases!!"
  end 
   
end 