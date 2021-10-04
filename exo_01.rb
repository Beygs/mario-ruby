File.readlines("bonjour.txt").each {|line|
  print "#{"\e[#{rand(31..37)}m#{line}\e[0m"}" #Affiche chaque ligne de bonjour.txt avec une couleur aléatoire
}
puts