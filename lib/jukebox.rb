require "pry"

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
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  if (song_choice.length == 1) && (song_choice.to_i < 10)
    puts "Playing #{songs[song_choice.to_i-1]}"
  elsif songs.include?(song_choice)
    puts "Playing #{song_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  selection = ''
  while selection != "exit"

    puts "Please enter a command:"
    selection = gets.chomp

    if selection == 'list'
      list(songs)
    elsif selection == "play"
      play(songs)
    elsif selection == "help"
      help
    end
  end
  exit_jukebox
end

run(songs)
