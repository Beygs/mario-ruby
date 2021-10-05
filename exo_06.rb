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
  } # Ajoute 10 espaces à chaque ligne du fichier "bonjour_toi" et stocke chaque ligne dans le tableau lines

  160.times do
    system 'clear' # efface l'écran
    puts lines # affiche le tableau lines (comme j'utilise puts chaque élément du tableau est affiché sur une ligne différente)
    lines.map{|line| line = line.slice!(0, 1)} # je retire le premier caractère de chaque ligne
    sleep(0.01) # delay pour que l'animation n'aille pas trop vite
  end
}

system 'clear'