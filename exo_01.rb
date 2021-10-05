File.readlines("bonjour.txt").each {|line|
  print "#{"\e[#{rand(31..37)}m#{line}\e[0m"}" #Affiche chaque ligne du fichier bonjour.txt avec une couleur aléatoire
}
puts