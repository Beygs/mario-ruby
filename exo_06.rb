system 'clear' # Nettoyage de l'écran de la console

puts "Encore toi ?!"
puts "\e[31m⚠️ Mets-toi en plein écran pour être sûr que tout s'affiche bien ⚠️\e[0m"

def repeat
  puts "Entre un nombre"
  print "> "
  repeatTimes = gets.chomp

  begin
    return repeatTimes = Integer(repeatTimes) - 1
  rescue 
    puts "\e[31m#{repeatTimes} n'est pas un nombre !\e[0m"
    repeat
  end
end

repeat.times {
  lines = File.readlines("bonjour_toi.txt").map{|line|
    line = " " * 10 + line
  }

  160.times do
    system 'clear'
    puts lines
    lines.map{|line| line = line.slice!(0, 1)}
    sleep(0.01)
  end
}

system 'clear'