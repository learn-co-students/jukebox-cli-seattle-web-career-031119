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


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|item, index|
    puts "#{index + 1}. #{item}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  choice1 = choice.to_i
  if (choice1 > 0 && choice1 < 10)
    puts "Playing #{songs[choice1 - 1]}"
  elsif songs.include?(choice)
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:" #(help, list, play, or exit)
  input = gets.strip
  case input
  when "help"
    help
    run(songs)
  when "list"
    list(songs)
    run(songs)
  when "play"
    play(songs)
    run(songs)
  when "exit"
    exit_jukebox
  end
end
