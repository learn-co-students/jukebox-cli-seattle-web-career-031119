require 'pry'


songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#    "Hi #{name}!"
#end
#
#puts "Enter your name:"
#users_name = gets.chomp
#
#puts say_hello(users_name)

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song, index|
        puts "#{index+1}. #{song}"
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    pick = gets.chomp
        if pick.to_i > 0 && pick.to_i <= songs.length
        puts "Playing #{songs[pick.to_i-1]}"
        elsif songs.include?(pick)
        puts "Playing #{pick}"
        else
        puts "Invalid input, please try again"
        end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
    help
    loop do
    puts "Please enter a command:"
    input = gets.chomp
        case input
            when "help"
            help
            when "list"
            list(songs)
            when "play"
            play(songs)
            when "exit"
            exit_jukebox
            else
            help
        end
    break if input == "exit"
    end
end
