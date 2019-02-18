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
  puts "I accept the following commands:"
  puts "- help : display this help message"
  puts "- list : display a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts " - exit : exits this program"
  
end

def list(songs)
  songs.each_index do |i|
    puts "#{i + 1}. #{songs[i]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  if songs.include?(song)
    puts "Playing <#{song}>"
  elsif song.to_i > 0 && song.to_i <= songs.length
    puts "Playing <#{songs[song.to_i-1]}>"
  else 
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    command = gets.chomp
    if command == "help"
      help
    elsif command == "play"
      play(songs)
    elsif command == "list"
      list(songs)
    elsif command == "exit"
      break
    end
  end
  exit_jukebox
end

