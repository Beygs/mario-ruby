require 'tts'

def repeat
  puts "Entrez un nombre"
  print "> "
  repeatTimes = gets.chomp

  begin
    repeatTimes = Integer(repeatTimes)
  rescue 
    puts "\e[31m#{repeatTimes} n'est pas un nombre !\e[0m"
    repeat
  end
end

"Salut, ça farte ?".play("fr", repeat)